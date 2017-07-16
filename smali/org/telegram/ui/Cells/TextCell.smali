.class public Lorg/telegram/ui/Cells/TextCell;
.super Landroid/widget/FrameLayout;
.source "TextCell.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private valueImageView:Landroid/widget/ImageView;

.field private valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x5

    const/4 v2, 0x3

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 40
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->addView(Landroid/view/View;)V

    .line 43
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v3, "windowBackgroundWhiteValueText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->addView(Landroid/view/View;)V

    .line 50
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "windowBackgroundWhiteGrayIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->addView(Landroid/view/View;)V

    .line 55
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->addView(Landroid/view/View;)V

    .line 58
    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    :cond_1
    move v2, v1

    .line 47
    goto :goto_1
.end method


# virtual methods
.method public getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getValueImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getValueTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v7, 0x41c00000    # 24.0f

    .line 87
    sub-int v0, p5, p3

    .line 88
    .local v0, "height":I
    sub-int v3, p4, p2

    .line 90
    .local v3, "width":I
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v2, v4, 0x2

    .line 91
    .local v2, "viewTop":I
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 92
    .local v1, "viewLeft":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v1, v2, v5, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 94
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v2, v4, 0x2

    .line 95
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v4, :cond_1

    const/high16 v4, 0x428e0000    # 71.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 96
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v1, v2, v5, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 98
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 99
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v4, :cond_2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 100
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 102
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v2, v4, 0x2

    .line 103
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 104
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 105
    return-void

    .line 91
    .end local v1    # "viewLeft":I
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 95
    .restart local v1    # "viewLeft":I
    :cond_1
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_1

    .line 99
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v1, v4, v5

    goto :goto_2

    .line 103
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v1, v4, v5

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x42400000    # 48.0f

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v5, -0x80000000

    .line 74
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 75
    .local v1, "width":I
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 77
    .local v0, "height":I
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 78
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v3, 0x42be0000    # 95.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 79
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 80
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 82
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setMeasuredDimension(II)V

    .line 83
    return-void
.end method

.method public setIconColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 135
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public setTextAndIcon(Ljava/lang/String;I)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 127
    return-void
.end method

.method public setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    return-void
.end method

.method public setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    return-void
.end method

.method public setTextAndValueDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Landroid/widget/ImageView;

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 167
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 109
    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 131
    return-void
.end method

.method public setValueColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 139
    return-void
.end method
