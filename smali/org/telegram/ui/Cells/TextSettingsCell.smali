.class public Lorg/telegram/ui/Cells/TextSettingsCell;
.super Landroid/widget/FrameLayout;
.source "TextSettingsCell.java"


# instance fields
.field private needDivider:Z

.field private textView:Landroid/widget/TextView;

.field private valueImageView:Landroid/widget/ImageView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x5

    const/4 v8, 0x3

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 54
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    iget-object v9, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    move v2, v7

    :goto_1
    or-int/lit8 v2, v2, 0x30

    const/high16 v5, 0x42340000    # 45.0f

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteValueText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 65
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    move v0, v8

    :goto_2
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    iget-object v9, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40800000    # -1.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    move v2, v8

    :goto_3
    or-int/lit8 v2, v2, 0x30

    move v5, v3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "windowBackgroundWhiteGrayIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 72
    iget-object v9, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    :goto_4
    or-int/lit8 v2, v8, 0x10

    move v5, v3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void

    :cond_0
    move v0, v8

    .line 54
    goto/16 :goto_0

    :cond_1
    move v2, v8

    .line 55
    goto/16 :goto_1

    :cond_2
    move v0, v7

    .line 65
    goto :goto_2

    :cond_3
    move v2, v7

    .line 66
    goto :goto_3

    :cond_4
    move v8, v7

    .line 72
    goto :goto_4
.end method

.method private setTheme()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 115
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    .line 116
    .local v0, "bgColor":I
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefDividerColor:I

    .line 117
    .local v1, "divColor":I
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    .line 118
    .local v5, "titleColor":I
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefSectionColor:I

    .line 119
    .local v3, "sColor":I
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "tag":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "Profile"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 121
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setBackgroundColor(I)V

    .line 122
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    if-eq v6, v8, :cond_0

    sget-object v6, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    :cond_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "theme"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 124
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "profileTitleColor"

    const v7, -0xdededf

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 125
    iget-object v6, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    if-eq v0, v8, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    return-void

    .line 119
    .end local v4    # "tag":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    goto :goto_0

    .line 128
    .restart local v4    # "tag":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setBackgroundColor(I)V

    .line 129
    iget-object v6, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    sget-object v6, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v6, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getValueTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 206
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 209
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    .line 77
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTheme()V

    .line 78
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    add-int/2addr v2, v4

    invoke-virtual {p0, v3, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setMeasuredDimension(II)V

    .line 80
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x42080000    # 34.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v0, v2, v3

    .line 81
    .local v0, "availableWidth":I
    div-int/lit8 v1, v0, 0x2

    .line 82
    .local v1, "width":I
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 83
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 85
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 86
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 87
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v0, v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 91
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 92
    return-void

    .line 78
    .end local v0    # "availableWidth":I
    .end local v1    # "width":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 89
    .restart local v0    # "availableWidth":I
    .restart local v1    # "width":I
    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public setDividerColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 111
    sget-object v0, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    return-void
.end method

.method public setEnabled(ZLjava/util/ArrayList;)V
    .locals 8
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 184
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(Z)V

    .line 185
    if-eqz p2, :cond_5

    .line 186
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    aput v0, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    aput v0, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    if-eqz p1, :cond_4

    :goto_2
    aput v1, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    .line 186
    goto :goto_0

    :cond_3
    move v0, v2

    .line 188
    goto :goto_1

    :cond_4
    move v1, v2

    .line 191
    goto :goto_2

    .line 194
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 196
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 198
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    :cond_7
    move v0, v2

    .line 194
    goto :goto_4

    :cond_8
    move v0, v2

    .line 196
    goto :goto_5

    :cond_9
    move v1, v2

    .line 199
    goto :goto_6
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "divider"    # Z

    .prologue
    const/4 v1, 0x4

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    .line 153
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setWillNotDraw(Z)V

    .line 154
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextAndIcon(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "divider"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    if-eqz p2, :cond_1

    .line 174
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    :goto_0
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    .line 180
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setWillNotDraw(Z)V

    .line 181
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "resDr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "divider"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    if-eqz p2, :cond_1

    .line 139
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    :goto_0
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    .line 145
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setWillNotDraw(Z)V

    .line 146
    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "divider"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    if-eqz p2, :cond_1

    .line 160
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :goto_0
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    .line 166
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setWillNotDraw(Z)V

    .line 167
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->requestLayout()V

    .line 168
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    return-void
.end method

.method public setTextValueColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    return-void
.end method
