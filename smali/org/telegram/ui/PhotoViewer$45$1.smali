.class Lorg/telegram/ui/PhotoViewer$45$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$45;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$45;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$45;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$45;

    .prologue
    .line 3044
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$45$1;->this$1:Lorg/telegram/ui/PhotoViewer$45;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 3047
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$45$1;->this$1:Lorg/telegram/ui/PhotoViewer$45;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$45;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$9000(Lorg/telegram/ui/PhotoViewer;I)V

    .line 3048
    return-void
.end method
