.class public Lorg/telegram/ui/Components/BackupImageView;
.super Landroid/view/View;
.source "BackupImageView.java"


# instance fields
.field private height:I

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    iput v0, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    iput v0, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    iput v0, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-void
.end method


# virtual methods
.method public getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    iget v0, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getHeight()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    iget v4, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    goto :goto_0
.end method

.method public setAspectFit(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    return-void
.end method

.method public setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "path"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, p3

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 10
    .param p1, "path"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;
    .param p4, "size"    # I

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, p3

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move v9, p4

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p1, "path"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 10
    .param p1, "path"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p4, "size"    # I

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move v9, p4

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p1, "path"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "ext"    # Ljava/lang/String;
    .param p4, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, p3

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "path"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "httpUrl"    # Ljava/lang/String;
    .param p3, "filter"    # Ljava/lang/String;
    .param p4, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p5, "thumbBitmap"    # Landroid/graphics/Bitmap;
    .param p6, "thumbLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p7, "thumbFilter"    # Ljava/lang/String;
    .param p8, "ext"    # Ljava/lang/String;
    .param p9, "size"    # I

    .prologue
    if-eqz p5, :cond_0

    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    .end local p4    # "thumb":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    invoke-direct {p4, v0, p5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p4    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p9

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 10
    .param p1, "path"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumb"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "size"    # I

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p3

    move-object v7, v2

    move-object v8, v2

    move v9, p4

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "angle"    # I
    .param p2, "center"    # Z

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    iput p2, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    return-void
.end method
