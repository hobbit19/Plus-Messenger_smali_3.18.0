.class public Lorg/telegram/ui/Components/TextDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "TextDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/TextDrawable$1;,
        Lorg/telegram/ui/Components/TextDrawable$IShapeBuilder;,
        Lorg/telegram/ui/Components/TextDrawable$IBuilder;,
        Lorg/telegram/ui/Components/TextDrawable$IConfigBuilder;,
        Lorg/telegram/ui/Components/TextDrawable$Builder;
    }
.end annotation


# static fields
.field private static final SHADE_FACTOR:F = 0.9f


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private final borderThickness:I

.field private final color:I

.field private final fontSize:I

.field private final height:I

.field private final radius:F

.field private final shape:Landroid/graphics/drawable/shapes/RectShape;

.field private final text:Ljava/lang/String;

.field private final textPaint:Landroid/graphics/Paint;

.field private final width:I


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/TextDrawable$Builder;)V
    .locals 3
    .param p1, "builder"    # Lorg/telegram/ui/Components/TextDrawable$Builder;

    .prologue
    .line 29
    invoke-static {p1}, Lorg/telegram/ui/Components/TextDrawable$Builder;->access$000(Lorg/telegram/ui/Components/TextDrawable$Builder;)Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 32
    invoke-static {p1}, Lorg/telegram/ui/Components/TextDrawable$Builder;->access$000(Lorg/telegram/ui/Components/TextDrawable$Builder;)Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 33
    invoke-static {p1}, Lorg/telegram/ui/Components/TextDrawable$Builder;->access$100(Lorg/telegram/ui/Components/TextDrawable$Builder;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/TextDrawable;->height:I

    .line 34
    invoke-static {p1}, Lorg/telegram/ui/Components/TextDrawable$Builder;->access$200(Lorg/telegram/ui/Components/TextDrawable$Builder;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/TextDrawable;->width:I

    .line 35
    iget v1, p1, Lorg/telegram/ui/Components/TextDrawable$Builder;->radius:F

    iput v1, p0, Lorg/telegram/ui/Components/TextDrawable;->radius:F

    .line 38
    invoke-static {p1}, Lorg/telegram/ui/Components/TextDrawable$Builder;->access$300(Lorg/telegram/ui/Components/TextDrawable$Builder;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Components/TextDrawable$Builder;->access$400(Lorg/telegram/ui/Components/TextDrawable$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->text:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lorg/telegram/ui/Components/TextDrawable$Builder;->access$500(Lorg/telegram/ui/Components/TextDrawable$Builder;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/TextDrawable;->color:I

    .line 42
    invoke-static {p1}, Lorg/telegram/ui/Components/TextDrawable$Builder;->access$600(Lorg/telegram/ui/Components/TextDrawable$Builder;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/TextDrawable;->fontSize:I

    .line 43
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->textPaint:Landroid/graphics/Paint;

    .line 44
    iget-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->textPaint:Landroid/graphics/Paint;

    iget v2, p1, Lorg/telegram/ui/Components/TextDrawable$Builder;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->textPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    iget-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/telegram/ui/Components/TextDrawable$Builder;->access$700(Lorg/telegram/ui/Components/TextDrawable$Builder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 47
    iget-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/telegram/ui/Components/TextDrawable$Builder;->access$800(Lorg/telegram/ui/Components/TextDrawable$Builder;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 49
    iget-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 50
    iget-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/telegram/ui/Components/TextDrawable$Builder;->access$900(Lorg/telegram/ui/Components/TextDrawable$Builder;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    invoke-static {p1}, Lorg/telegram/ui/Components/TextDrawable$Builder;->access$900(Lorg/telegram/ui/Components/TextDrawable$Builder;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/TextDrawable;->borderThickness:I

    .line 54
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/TextDrawable;->color:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/TextDrawable;->getDarkerShade(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/TextDrawable;->borderThickness:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TextDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 61
    .local v0, "paint":Landroid/graphics/Paint;
    iget v1, p0, Lorg/telegram/ui/Components/TextDrawable;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    return-void

    .line 38
    .end local v0    # "paint":Landroid/graphics/Paint;
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Components/TextDrawable$Builder;->access$400(Lorg/telegram/ui/Components/TextDrawable$Builder;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/TextDrawable$Builder;Lorg/telegram/ui/Components/TextDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Components/TextDrawable$Builder;
    .param p2, "x1"    # Lorg/telegram/ui/Components/TextDrawable$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TextDrawable;-><init>(Lorg/telegram/ui/Components/TextDrawable$Builder;)V

    return-void
.end method

.method public static builder()Lorg/telegram/ui/Components/TextDrawable$IShapeBuilder;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lorg/telegram/ui/Components/TextDrawable$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/TextDrawable$Builder;-><init>(Lorg/telegram/ui/Components/TextDrawable$1;)V

    return-object v0
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 97
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 98
    .local v0, "rect":Landroid/graphics/RectF;
    iget v1, p0, Lorg/telegram/ui/Components/TextDrawable;->borderThickness:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/TextDrawable;->borderThickness:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 100
    iget-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->shape:Landroid/graphics/drawable/shapes/RectShape;

    instance-of v1, v1, Landroid/graphics/drawable/shapes/OvalShape;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->shape:Landroid/graphics/drawable/shapes/RectShape;

    instance-of v1, v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    if-eqz v1, :cond_1

    .line 104
    iget v1, p0, Lorg/telegram/ui/Components/TextDrawable;->radius:F

    iget v2, p0, Lorg/telegram/ui/Components/TextDrawable;->radius:F

    iget-object v3, p0, Lorg/telegram/ui/Components/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/TextDrawable;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getDarkerShade(I)I
    .locals 4
    .param p1, "color"    # I

    .prologue
    const v3, 0x3f666666    # 0.9f

    .line 66
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 67
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 68
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 66
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 74
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 78
    .local v3, "r":Landroid/graphics/Rect;
    iget v5, p0, Lorg/telegram/ui/Components/TextDrawable;->borderThickness:I

    if-lez v5, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TextDrawable;->drawBorder(Landroid/graphics/Canvas;)V

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 83
    .local v0, "count":I
    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 86
    iget v5, p0, Lorg/telegram/ui/Components/TextDrawable;->width:I

    if-gez v5, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 87
    .local v4, "width":I
    :goto_0
    iget v5, p0, Lorg/telegram/ui/Components/TextDrawable;->height:I

    if-gez v5, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 88
    .local v2, "height":I
    :goto_1
    iget v5, p0, Lorg/telegram/ui/Components/TextDrawable;->fontSize:I

    if-gez v5, :cond_3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 89
    .local v1, "fontSize":I
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/TextDrawable;->textPaint:Landroid/graphics/Paint;

    int-to-float v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    iget-object v5, p0, Lorg/telegram/ui/Components/TextDrawable;->text:Ljava/lang/String;

    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 94
    return-void

    .line 86
    .end local v1    # "fontSize":I
    .end local v2    # "height":I
    .end local v4    # "width":I
    :cond_1
    iget v4, p0, Lorg/telegram/ui/Components/TextDrawable;->width:I

    goto :goto_0

    .line 87
    .restart local v4    # "width":I
    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/TextDrawable;->height:I

    goto :goto_1

    .line 88
    .restart local v2    # "height":I
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/TextDrawable;->fontSize:I

    goto :goto_2
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lorg/telegram/ui/Components/TextDrawable;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/telegram/ui/Components/TextDrawable;->width:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Components/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Components/TextDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 119
    return-void
.end method
