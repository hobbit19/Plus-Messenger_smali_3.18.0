.class public Lorg/telegram/ui/ActionBar/MenuDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MenuDrawable.java"


# instance fields
.field private animationInProgress:Z

.field private currentAnimationTime:I

.field private currentRotation:F

.field private finalRotation:F

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastFrameTime:J

.field private paint:Landroid/graphics/Paint;

.field private reverseAngle:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->reverseAngle:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderIconsColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    iget v2, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->finalRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->lastFrameTime:J

    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v10, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->lastFrameTime:J

    sub-long v6, v4, v10

    .local v6, "dt":J
    iget v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentAnimationTime:I

    int-to-long v4, v0

    add-long/2addr v4, v6

    long-to-int v0, v4

    iput v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentAnimationTime:I

    iget v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentAnimationTime:I

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->finalRotation:F

    iput v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    .end local v6    # "dt":J
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->lastFrameTime:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->invalidateSelf()V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->reverseAngle:Z

    if-eqz v0, :cond_4

    const/16 v0, -0xb4

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v1, v0

    const/4 v2, 0x0

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    mul-float/2addr v4, v5

    sub-float v3, v0, v4

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v4, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v2, v4

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v2, v4

    sub-float v8, v0, v2

    .local v8, "endYDiff":F
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v2, v4

    sub-float v3, v0, v2

    .local v3, "endXDiff":F
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v2, v4

    add-float v9, v0, v2

    .local v9, "startYDiff":F
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v2, 0x40f00000    # 7.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v2, v4

    add-float v1, v0, v2

    .local v1, "startXDiff":F
    neg-float v2, v9

    neg-float v4, v8

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v9

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .end local v1    # "startXDiff":F
    .end local v3    # "endXDiff":F
    .end local v8    # "endYDiff":F
    .end local v9    # "startYDiff":F
    .restart local v6    # "dt":J
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    iget v2, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->finalRotation:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v2, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentAnimationTime:I

    int-to-float v2, v2

    const/high16 v4, 0x43960000    # 300.0f

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->finalRotation:F

    mul-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    goto/16 :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v4, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentAnimationTime:I

    int-to-float v4, v4

    const/high16 v5, 0x43960000    # 300.0f

    div-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    goto/16 :goto_0

    .end local v6    # "dt":J
    :cond_4
    const/16 v0, 0xb4

    goto/16 :goto_1
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setRotation(FZ)V
    .locals 6
    .param p1, "rotation"    # F
    .param p2, "animated"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/high16 v3, 0x43960000    # 300.0f

    const/high16 v2, 0x3f800000    # 1.0f

    iput-wide v4, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->lastFrameTime:J

    iget v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->reverseAngle:Z

    :cond_0
    :goto_0
    iput-wide v4, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->lastFrameTime:J

    if-eqz p2, :cond_3

    iget v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentAnimationTime:I

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->lastFrameTime:J

    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->finalRotation:F

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->invalidateSelf()V

    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->reverseAngle:Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    sub-float v0, v2, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentAnimationTime:I

    goto :goto_1

    :cond_3
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->finalRotation:F

    goto :goto_2
.end method
