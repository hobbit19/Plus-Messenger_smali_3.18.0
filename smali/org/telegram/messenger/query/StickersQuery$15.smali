.class final Lorg/telegram/messenger/query/StickersQuery$15;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$date:I

.field final synthetic val$hash:I

.field final synthetic val$stickersFinal:Ljava/util/ArrayList;

.field final synthetic val$unreadStickers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$unreadStickers:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$date:I

    iput p4, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$hash:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 659
    :try_start_0
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 660
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    const-string/jumbo v7, "REPLACE INTO stickers_featured VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    .line 661
    .local v5, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 662
    const/4 v4, 0x4

    .line 663
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 664
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {v6}, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->getObjectSize()I

    move-result v6

    add-int/2addr v4, v6

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-direct {v1, v4}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 667
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x4

    invoke-direct {v2, v6}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 668
    .local v2, "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 669
    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 670
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {v6, v1}, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 672
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 673
    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 674
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 676
    :cond_2
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 677
    const/4 v6, 0x2

    invoke-virtual {v5, v6, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 678
    const/4 v6, 0x3

    invoke-virtual {v5, v6, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 679
    const/4 v6, 0x4

    iget v7, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$date:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 680
    const/4 v6, 0x5

    iget v7, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$hash:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 681
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 682
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 683
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 684
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 695
    .end local v0    # "a":I
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "size":I
    .end local v5    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_3
    return-void

    .line 686
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    const-string/jumbo v7, "UPDATE stickers_featured SET date = ?"

    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    .line 687
    .restart local v5    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 688
    const/4 v6, 0x1

    iget v7, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$date:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 689
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 690
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 692
    .end local v5    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_0
    move-exception v3

    .line 693
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
