.class Lorg/telegram/messenger/MessagesStorage$39;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->processPendingRead(JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$dialog_id:J

.field final synthetic val$max_date:I

.field final synthetic val$max_id:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;JJI)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 2297
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$39;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$39;->val$dialog_id:J

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesStorage$39;->val$max_id:J

    iput p6, p0, Lorg/telegram/messenger/MessagesStorage$39;->val$max_date:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 2301
    :try_start_0
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$39;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 2304
    iget-wide v6, p0, Lorg/telegram/messenger/MessagesStorage$39;->val$dialog_id:J

    long-to-int v3, v6

    .line 2306
    .local v3, "lower_id":I
    if-eqz v3, :cond_1

    .line 2307
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$39;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string/jumbo v6, "UPDATE messages SET read_state = read_state | 1 WHERE uid = ? AND mid <= ? AND read_state IN(0,2) AND out = 0"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    .line 2308
    .local v4, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 2309
    const/4 v5, 0x1

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesStorage$39;->val$dialog_id:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 2310
    const/4 v5, 0x2

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesStorage$39;->val$max_id:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 2311
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 2312
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2322
    :goto_0
    const/4 v0, 0x0

    .line 2323
    .local v0, "currentMaxId":I
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$39;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SELECT inbox_max FROM dialogs WHERE did = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/messenger/MessagesStorage$39;->val$dialog_id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 2324
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2325
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    .line 2327
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2328
    iget-wide v6, p0, Lorg/telegram/messenger/MessagesStorage$39;->val$max_id:J

    long-to-int v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2330
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$39;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string/jumbo v6, "UPDATE dialogs SET unread_count = 0, unread_count_i = 0, inbox_max = ? WHERE did = ?"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    .line 2331
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 2332
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2333
    const/4 v5, 0x2

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesStorage$39;->val$dialog_id:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 2334
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 2335
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2337
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$39;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 2341
    .end local v0    # "currentMaxId":I
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v3    # "lower_id":I
    .end local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_1
    return-void

    .line 2314
    .restart local v3    # "lower_id":I
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$39;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string/jumbo v6, "UPDATE messages SET read_state = read_state | 1 WHERE uid = ? AND date <= ? AND read_state IN(0,2) AND out = 0"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    .line 2315
    .restart local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 2316
    const/4 v5, 0x1

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesStorage$39;->val$dialog_id:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 2317
    const/4 v5, 0x2

    iget v6, p0, Lorg/telegram/messenger/MessagesStorage$39;->val$max_date:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2318
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 2319
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2338
    .end local v3    # "lower_id":I
    .end local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_0
    move-exception v2

    .line 2339
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
