.class public Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateReadHistoryInbox"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12988
    const v0, -0x669e02a4

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12987
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12993
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 12994
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->max_id:I

    .line 12995
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->pts:I

    .line 12996
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->pts_count:I

    .line 12997
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 13000
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13001
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 13002
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13003
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13004
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->pts_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13005
    return-void
.end method
