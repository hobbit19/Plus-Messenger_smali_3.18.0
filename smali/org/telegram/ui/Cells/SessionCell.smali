.class public Lorg/telegram/ui/Cells/SessionCell;
.super Landroid/widget/FrameLayout;
.source "SessionCell.java"


# instance fields
.field private detailExTextView:Landroid/widget/TextView;

.field private detailTextView:Landroid/widget/TextView;

.field private nameTextView:Landroid/widget/TextView;

.field needDivider:Z

.field private onlineTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .local v8, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 46
    const/4 v0, -0x1

    const/high16 v1, 0x41f00000    # 30.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v2, v2, 0x30

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v5, 0x41300000    # 11.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Cells/SessionCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->nameTextView:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 56
    iget-object v1, p0, Lorg/telegram/ui/Cells/SessionCell;->nameTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    :goto_1
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 58
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->onlineTextView:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->onlineTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 60
    iget-object v1, p0, Lorg/telegram/ui/Cells/SessionCell;->onlineTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    .line 63
    iget-object v7, p0, Lorg/telegram/ui/Cells/SessionCell;->onlineTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v9, p0, Lorg/telegram/ui/Cells/SessionCell;->nameTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x35

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :goto_3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailTextView:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 77
    iget-object v1, p0, Lorg/telegram/ui/Cells/SessionCell;->detailTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    :goto_4
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    iget-object v7, p0, Lorg/telegram/ui/Cells/SessionCell;->detailTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    :goto_5
    or-int/lit8 v2, v2, 0x30

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v4, 0x42100000    # 36.0f

    const/high16 v5, 0x41880000    # 17.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/SessionCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailExTextView:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailExTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText3"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailExTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailExTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailExTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailExTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailExTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 87
    iget-object v1, p0, Lorg/telegram/ui/Cells/SessionCell;->detailExTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    :goto_6
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    iget-object v7, p0, Lorg/telegram/ui/Cells/SessionCell;->detailExTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x5

    :goto_7
    or-int/lit8 v2, v2, 0x30

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v4, 0x426c0000    # 59.0f

    const/high16 v5, 0x41880000    # 17.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/SessionCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void

    .line 46
    :cond_0
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x3

    goto/16 :goto_1

    .line 60
    :cond_2
    const/4 v0, 0x5

    goto/16 :goto_2

    .line 66
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/Cells/SessionCell;->nameTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v7, p0, Lorg/telegram/ui/Cells/SessionCell;->onlineTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 77
    :cond_4
    const/4 v0, 0x3

    goto/16 :goto_4

    .line 78
    :cond_5
    const/4 v2, 0x3

    goto/16 :goto_5

    .line 87
    :cond_6
    const/4 v0, 0x3

    goto :goto_6

    .line 88
    :cond_7
    const/4 v2, 0x3

    goto :goto_7
.end method

.method private setTheme()V
    .locals 2

    .prologue
    .line 159
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SessionCell;->setBackgroundColor(I)V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->nameTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Cells/SessionCell;->detailExTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    sget-object v0, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SessionCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SessionCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SessionCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SessionCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SessionCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SessionCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 171
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SessionCell;->needDivider:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 94
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SessionCell;->setTheme()V

    .line 95
    :cond_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSession(Lorg/telegram/tgnet/TLRPC$TL_authorization;Z)V
    .locals 7
    .param p1, "session"    # Lorg/telegram/tgnet/TLRPC$TL_authorization;
    .param p2, "divider"    # Z

    .prologue
    .line 98
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/SessionCell;->needDivider:Z

    .line 100
    iget-object v1, p0, Lorg/telegram/ui/Cells/SessionCell;->nameTextView:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_version:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    .line 102
    const-string/jumbo v1, "windowBackgroundWhiteValueText"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/SessionCell;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Cells/SessionCell;->onlineTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "Online"

    const v3, 0x7f070456

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lorg/telegram/ui/Cells/SessionCell;->onlineTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "windowBackgroundWhiteValueText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->ip:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->country:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    const-string/jumbo v1, "\u2014 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/SessionCell;->detailExTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .restart local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->device_model:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->device_model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_3
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->system_version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->platform:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 131
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_5
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->platform:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 135
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_6
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->system_version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 138
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->platform:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 139
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_7
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->system_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_8
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_a

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 147
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_9
    const-string/jumbo v1, "UnofficialApp"

    const v2, 0x7f07064c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string/jumbo v1, " (ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->api_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Cells/SessionCell;->detailTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void

    .line 107
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_b
    const-string/jumbo v1, "windowBackgroundWhiteGrayText3"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/SessionCell;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lorg/telegram/ui/Cells/SessionCell;->onlineTextView:Landroid/widget/TextView;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->date_active:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lorg/telegram/ui/Cells/SessionCell;->onlineTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "windowBackgroundWhiteGrayText3"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method
