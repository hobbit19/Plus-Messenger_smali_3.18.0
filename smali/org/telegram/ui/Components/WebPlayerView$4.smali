.class Lorg/telegram/ui/Components/WebPlayerView$4;
.super Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WebPlayerView;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$4;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->onMeasure(II)V

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$4;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4800(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$4;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3000(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$4;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$4;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$4;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3200(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$4;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3200(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$4;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$4;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method
