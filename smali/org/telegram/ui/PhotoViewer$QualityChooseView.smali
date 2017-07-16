.class Lorg/telegram/ui/PhotoViewer$QualityChooseView;
.super Landroid/view/View;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualityChooseView"
.end annotation


# instance fields
.field private circleSize:I

.field private gapSize:I

.field private lineSize:I

.field private moving:Z

.field private paint:Landroid/graphics/Paint;

.field private sideSide:I

.field private startMoving:Z

.field private startMovingQuality:I

.field private startX:F

.field private textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 5709
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 5710
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5712
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->paint:Landroid/graphics/Paint;

    .line 5713
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    .line 5714
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 5715
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    const v1, -0x323233

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 5716
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 5788
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v8, v0, v1

    .line 5789
    .local v8, "cy":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-ge v6, v0, :cond_7

    .line 5790
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    div-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    .line 5791
    .local v7, "cx":I
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$6500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-gt v6, v0, :cond_1

    .line 5792
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->paint:Landroid/graphics/Paint;

    const v1, -0xac5111

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5797
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_2

    .line 5798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 5808
    .local v9, "text":Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 5809
    .local v10, "width":F
    int-to-float v1, v7

    int-to-float v2, v8

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$6500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-ne v6, v0, :cond_6

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5810
    int-to-float v0, v7

    div-float v1, v10, v12

    sub-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v8, v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 5811
    if-eqz v6, :cond_0

    .line 5812
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v7, v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    sub-int v11, v0, v1

    .line 5813
    .local v11, "x":I
    int-to-float v1, v11

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v8, v0

    int-to-float v2, v0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    add-int/2addr v0, v11

    int-to-float v3, v0

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5789
    .end local v11    # "x":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 5794
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "width":F
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->paint:Landroid/graphics/Paint;

    const v1, 0x66ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 5799
    :cond_2
    if-nez v6, :cond_3

    .line 5800
    const-string/jumbo v9, "240p"

    .restart local v9    # "text":Ljava/lang/String;
    goto :goto_2

    .line 5801
    .end local v9    # "text":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    if-ne v6, v0, :cond_4

    .line 5802
    const-string/jumbo v9, "360p"

    .restart local v9    # "text":Ljava/lang/String;
    goto :goto_2

    .line 5803
    .end local v9    # "text":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x2

    if-ne v6, v0, :cond_5

    .line 5804
    const-string/jumbo v9, "480p"

    .restart local v9    # "text":Ljava/lang/String;
    goto :goto_2

    .line 5806
    .end local v9    # "text":Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, "720p"

    .restart local v9    # "text":Ljava/lang/String;
    goto :goto_2

    .line 5809
    .restart local v10    # "width":F
    :cond_6
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    goto :goto_3

    .line 5816
    .end local v7    # "cx":I
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "width":F
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 5778
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 5779
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 5780
    .local v0, "width":I
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    .line 5781
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    .line 5782
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    .line 5783
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    mul-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    .line 5784
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v9, 0x41700000    # 15.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 5720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 5721
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_3

    .line 5722
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5723
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 5724
    iget v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    iget v8, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5725
    .local v1, "cx":I
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_2

    .line 5726
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$6500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    if-ne v0, v6, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->startMoving:Z

    .line 5727
    iput v3, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->startX:F

    .line 5728
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$6500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->startMovingQuality:I

    .line 5773
    .end local v0    # "a":I
    .end local v1    # "cx":I
    :cond_1
    :goto_1
    return v5

    .line 5723
    .restart local v0    # "a":I
    .restart local v1    # "cx":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5732
    .end local v0    # "a":I
    .end local v1    # "cx":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 5733
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->startMoving:Z

    if-eqz v6, :cond_4

    .line 5734
    iget v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->startX:F

    sub-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 5735
    iput-boolean v5, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->moving:Z

    .line 5736
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->startMoving:Z

    goto :goto_1

    .line 5738
    :cond_4
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->moving:Z

    if-eqz v6, :cond_1

    .line 5739
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 5740
    iget v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    iget v8, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5741
    .restart local v1    # "cx":I
    iget v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    add-int v2, v6, v7

    .line 5742
    .local v2, "diff":I
    sub-int v6, v1, v2

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_5

    add-int v6, v1, v2

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_5

    .line 5743
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$6500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    if-eq v6, v0, :cond_1

    .line 5744
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6, v0}, Lorg/telegram/ui/PhotoViewer;->access$6502(Lorg/telegram/ui/PhotoViewer;I)I

    .line 5745
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6, v4}, Lorg/telegram/ui/PhotoViewer;->access$6700(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 5746
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->invalidate()V

    goto :goto_1

    .line 5739
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5752
    .end local v0    # "a":I
    .end local v1    # "cx":I
    .end local v2    # "diff":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 5753
    :cond_7
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->moving:Z

    if-nez v6, :cond_a

    .line 5754
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 5755
    iget v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    iget v8, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5756
    .restart local v1    # "cx":I
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_9

    .line 5757
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$6500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    if-eq v6, v0, :cond_8

    .line 5758
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6, v0}, Lorg/telegram/ui/PhotoViewer;->access$6502(Lorg/telegram/ui/PhotoViewer;I)I

    .line 5759
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6, v5}, Lorg/telegram/ui/PhotoViewer;->access$6700(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 5760
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->invalidate()V

    .line 5770
    .end local v0    # "a":I
    .end local v1    # "cx":I
    :cond_8
    :goto_4
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->startMoving:Z

    .line 5771
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->moving:Z

    goto/16 :goto_1

    .line 5754
    .restart local v0    # "a":I
    .restart local v1    # "cx":I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5766
    .end local v0    # "a":I
    .end local v1    # "cx":I
    :cond_a
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$6500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->startMovingQuality:I

    if-eq v6, v7, :cond_8

    .line 5767
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6, v5}, Lorg/telegram/ui/PhotoViewer;->access$6900(Lorg/telegram/ui/PhotoViewer;I)V

    goto :goto_4
.end method
