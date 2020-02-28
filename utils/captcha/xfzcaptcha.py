import random
from PIL import Image, ImageDraw, ImageFont
import time
import os
import string


class Captcha(object):
    """验证码"""
    # 字体位置
    font_path = os.path.join(os.path.dirname(__file__), "verdana.ttf")
    # 验证码位数
    number = 4
    # 验证码图片宽度和高度
    size = (100, 40)
    # 背景颜色
    bgcolor = (5, 5, 5)
    # 随机字体颜色
    random.seed(int(time.time()))
    font_color = (random.randint(200, 225), random.randint(200, 225), random.randint(200, 225))
    # 验证码字体大小
    font_size = 22
    # 随机干扰线颜色
    line_color = (random.randint(0, 250), random.randint(0, 250), random.randint(0, 250))
    # 是否加入干扰线
    draw_line = True
    # 是否绘制干扰点
    draw_point = True
    # 干扰线条数
    line_number = 3

    SOURCE = list(string.ascii_letters)
    for index in range(0, 10):
        SOURCE.append(str(index))

    NUMBER = [str(i) for i in range(0, 10)]

    @classmethod
    def gene_text(cls):
        """生成文本"""
        return "".join(random.sample(cls.SOURCE, cls.number))

    @classmethod
    def gene_number(cls):
        """生成纯数字验证码"""
        return "".join(random.sample(cls.NUMBER, cls.number))

    @classmethod
    def __gene_line(cls, draw, width, height):
        """绘制干扰线"""
        begin = (random.randint(0, width), random.randint(0, height))
        end = (random.randint(0, width), random.randint(0, height))
        draw.line([begin, end], fill=cls.line_color)

    @classmethod
    def __gene_points(cls, draw, point_chance, width, height):
        """绘制干扰点"""
        chance = min(100, max(0, int(point_chance)))
        for w in range(width):
            for h in range(height):
                tmp = random.randint(0, 100)
                if tmp > 100 - chance:
                    draw.point((w, h), fill=(0, 0, 0))

    @classmethod
    def gene_code(cls):
        """生成验证码"""
        width, height = cls.size
        image = Image.new("RGBA", (width, height), cls.bgcolor)
        font = ImageFont.truetype(cls.font_path, cls.font_size)
        draw = ImageDraw.Draw(image)
        text = cls.gene_text()
        font_width, font_height = font.getsize(text)
        draw.text(((width - font_width) / 2, (height - font_height) / 2), text, font=font, fill=cls.font_color)
        if cls.draw_line:
            for x in range(0, cls.line_number):
                cls.__gene_line(draw, width, height)
        if cls.draw_point:
            cls.__gene_points(draw, 10, width, height)

        return text, image
