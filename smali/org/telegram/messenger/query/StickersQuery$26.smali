.class final Lorg/telegram/messenger/query/StickersQuery$26;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/TLRPC$StickerSet;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 1179
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$26;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$26;->val$context:Landroid/content/Context;

    iput p3, p0, Lorg/telegram/messenger/query/StickersQuery$26;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1182
    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$26$1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/query/StickersQuery$26$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$26;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1201
    return-void
.end method
