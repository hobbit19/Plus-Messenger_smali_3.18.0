.class public Lorg/telegram/ui/Components/RgbSelectorView;
.super Landroid/widget/LinearLayout;
.source "RgbSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private imgPreview:Landroid/widget/ImageView;

.field private listener:Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;

.field private seekAlpha:Landroid/widget/SeekBar;

.field private seekBlue:Landroid/widget/SeekBar;

.field private seekGreen:Landroid/widget/SeekBar;

.field private seekRed:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->init()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/RgbSelectorView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RgbSelectorView;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->setPreviewImage()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/RgbSelectorView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RgbSelectorView;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->onColorChanged()V

    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 52
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 53
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 55
    .local v2, "rgbView":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Components/RgbSelectorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v1, Lorg/telegram/ui/Components/RgbSelectorView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/RgbSelectorView$1;-><init>(Lorg/telegram/ui/Components/RgbSelectorView;)V

    .line 74
    .local v1, "listener":Landroid/widget/SeekBar$OnSeekBarChangeListener;
    const v3, 0x7f0c001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekRed:Landroid/widget/SeekBar;

    .line 75
    iget-object v3, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekRed:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 76
    const v3, 0x7f0c0020

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekGreen:Landroid/widget/SeekBar;

    .line 77
    iget-object v3, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekGreen:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 78
    const v3, 0x7f0c0022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekBlue:Landroid/widget/SeekBar;

    .line 79
    iget-object v3, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekBlue:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 80
    const v3, 0x7f0c0024

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekAlpha:Landroid/widget/SeekBar;

    .line 81
    iget-object v3, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekAlpha:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 82
    const v3, 0x7f0c001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lorg/telegram/ui/Components/RgbSelectorView;->imgPreview:Landroid/widget/ImageView;

    .line 84
    const/high16 v3, -0x1000000

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/RgbSelectorView;->setColor(I)V

    .line 85
    return-void
.end method

.method private onColorChanged()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->listener:Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->listener:Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;->colorChanged(I)V

    .line 113
    :cond_0
    return-void
.end method

.method private setPreviewImage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, "preview":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->getColor()I

    move-result v1

    invoke-virtual {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 92
    iget-object v1, p0, Lorg/telegram/ui/Components/RgbSelectorView;->imgPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekAlpha:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekRed:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekGreen:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekBlue:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekAlpha:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekRed:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekGreen:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekBlue:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 106
    invoke-direct {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->setPreviewImage()V

    .line 107
    return-void
.end method

.method public setOnColorChangedListener(Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/telegram/ui/Components/RgbSelectorView;->listener:Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;

    .line 118
    return-void
.end method
