.class Lorg/telegram/ui/ChannelEditTypeActivity$2$1;
.super Ljava/lang/Object;
.source "ChannelEditTypeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditTypeActivity$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelEditTypeActivity$2;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditTypeActivity$2;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelEditTypeActivity$2;

    .prologue
    .line 134
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$2$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/ChannelEditTypeActivity$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$2$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$2;

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity$2;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v2, "CHANNELS_ADMIN_PUBLIC_TOO_MUCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$202(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$2$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$2;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$200(Lorg/telegram/ui/ChannelEditTypeActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$2$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$2;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$300(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    .line 141
    :cond_1
    return-void

    .line 137
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
