.class Lorg/telegram/ui/Components/TabsView$3;
.super Landroid/widget/LinearLayout;
.source "TabsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TabsView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TabsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TabsView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/TabsView;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 290
    iput-object p1, p0, Lorg/telegram/ui/Components/TabsView$3;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 293
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TabsView$3;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TabsView$3;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 296
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
