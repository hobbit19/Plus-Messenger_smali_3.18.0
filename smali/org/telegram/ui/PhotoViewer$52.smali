.class Lorg/telegram/ui/PhotoViewer$52;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 4432
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$52;->val$photos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4435
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4466
    :cond_0
    :goto_0
    return-void

    .line 4438
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 4439
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4441
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1, v5}, Lorg/telegram/ui/PhotoViewer;->access$12602(Lorg/telegram/ui/PhotoViewer;I)I

    .line 4442
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/PhotoViewer;->access$12702(Lorg/telegram/ui/PhotoViewer;J)J

    .line 4443
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12800(Lorg/telegram/ui/PhotoViewer;)V

    .line 4444
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 4445
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 4446
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4447
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 4449
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$13000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4450
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$13000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v5, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 4452
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->val$photos:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 4453
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    .line 4454
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$13100(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, -0x7ffeff00

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4460
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$13100(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x110

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4461
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4462
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$13100(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4463
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 4464
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    goto/16 :goto_0

    .line 4458
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$13100(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method
