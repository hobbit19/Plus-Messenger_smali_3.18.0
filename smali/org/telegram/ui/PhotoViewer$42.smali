.class Lorg/telegram/ui/PhotoViewer$42;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 2911
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$42;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2926
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$42;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public needMoveImageTo(FFFZ)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "s"    # F
    .param p4, "animated"    # Z

    .prologue
    .line 2914
    if-eqz p4, :cond_0

    .line 2915
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$42;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x1

    invoke-static {v0, p3, p1, p2, v1}, Lorg/telegram/ui/PhotoViewer;->access$11700(Lorg/telegram/ui/PhotoViewer;FFFZ)V

    .line 2922
    :goto_0
    return-void

    .line 2917
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$42;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$3702(Lorg/telegram/ui/PhotoViewer;F)F

    .line 2918
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$42;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, p2}, Lorg/telegram/ui/PhotoViewer;->access$3802(Lorg/telegram/ui/PhotoViewer;F)F

    .line 2919
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$42;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, p3}, Lorg/telegram/ui/PhotoViewer;->access$3602(Lorg/telegram/ui/PhotoViewer;F)F

    .line 2920
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$42;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "reset"    # Z

    .prologue
    .line 2931
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$42;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2932
    return-void

    .line 2931
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
