.class public Lorg/telegram/messenger/support/util/AsyncListUtil;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/util/AsyncListUtil$ViewCallback;,
        Lorg/telegram/messenger/support/util/AsyncListUtil$DataCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncListUtil"


# instance fields
.field mAllowScrollHints:Z

.field private final mBackgroundCallback:Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mBackgroundProxy:Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mDataCallback:Lorg/telegram/messenger/support/util/AsyncListUtil$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/support/util/AsyncListUtil$DataCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field mDisplayedGeneration:I

.field mItemCount:I

.field private final mMainThreadCallback:Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mMainThreadProxy:Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mMissingPositions:Landroid/util/SparseIntArray;

.field final mPrevRange:[I

.field mRequestedGeneration:I

.field private mScrollHint:I

.field final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileList:Lorg/telegram/messenger/support/util/TileList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/support/util/TileList",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field final mTmpRange:[I

.field final mTmpRangeExtended:[I

.field final mViewCallback:Lorg/telegram/messenger/support/util/AsyncListUtil$ViewCallback;


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILorg/telegram/messenger/support/util/AsyncListUtil$DataCallback;Lorg/telegram/messenger/support/util/AsyncListUtil$ViewCallback;)V
    .locals 4
    .param p2, "tileSize"    # I
    .param p4, "viewCallback"    # Lorg/telegram/messenger/support/util/AsyncListUtil$ViewCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Lorg/telegram/messenger/support/util/AsyncListUtil$DataCallback",
            "<TT;>;",
            "Lorg/telegram/messenger/support/util/AsyncListUtil$ViewCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil;, "Lorg/telegram/messenger/support/util/AsyncListUtil<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "dataCallback":Lorg/telegram/messenger/support/util/AsyncListUtil$DataCallback;, "Lorg/telegram/messenger/support/util/AsyncListUtil$DataCallback<TT;>;"
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    .line 62
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mPrevRange:[I

    .line 63
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRangeExtended:[I

    .line 66
    iput v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mScrollHint:I

    .line 68
    iput v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mItemCount:I

    .line 70
    iput v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mDisplayedGeneration:I

    .line 71
    iget v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mDisplayedGeneration:I

    iput v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mRequestedGeneration:I

    .line 73
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    .line 207
    new-instance v1, Lorg/telegram/messenger/support/util/AsyncListUtil$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/support/util/AsyncListUtil$1;-><init>(Lorg/telegram/messenger/support/util/AsyncListUtil;)V

    iput-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mMainThreadCallback:Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;

    .line 289
    new-instance v1, Lorg/telegram/messenger/support/util/AsyncListUtil$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/support/util/AsyncListUtil$2;-><init>(Lorg/telegram/messenger/support/util/AsyncListUtil;)V

    iput-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mBackgroundCallback:Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;

    .line 89
    iput-object p1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTClass:Ljava/lang/Class;

    .line 90
    iput p2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTileSize:I

    .line 91
    iput-object p3, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mDataCallback:Lorg/telegram/messenger/support/util/AsyncListUtil$DataCallback;

    .line 92
    iput-object p4, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mViewCallback:Lorg/telegram/messenger/support/util/AsyncListUtil$ViewCallback;

    .line 94
    new-instance v1, Lorg/telegram/messenger/support/util/TileList;

    iget v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTileSize:I

    invoke-direct {v1, v2}, Lorg/telegram/messenger/support/util/TileList;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTileList:Lorg/telegram/messenger/support/util/TileList;

    .line 96
    new-instance v0, Lorg/telegram/messenger/support/util/MessageThreadUtil;

    invoke-direct {v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil;-><init>()V

    .line 97
    .local v0, "threadUtil":Lorg/telegram/messenger/support/util/ThreadUtil;, "Lorg/telegram/messenger/support/util/ThreadUtil<TT;>;"
    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mMainThreadCallback:Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/support/util/ThreadUtil;->getMainThreadProxy(Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;)Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mMainThreadProxy:Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;

    .line 98
    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mBackgroundCallback:Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/support/util/ThreadUtil;->getBackgroundProxy(Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;)Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mBackgroundProxy:Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;

    .line 100
    invoke-virtual {p0}, Lorg/telegram/messenger/support/util/AsyncListUtil;->refresh()V

    .line 101
    return-void
.end method

.method private isRefreshPending()Z
    .locals 2

    .prologue
    .line 104
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil;, "Lorg/telegram/messenger/support/util/AsyncListUtil<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mRequestedGeneration:I

    iget v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mDisplayedGeneration:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil;, "Lorg/telegram/messenger/support/util/AsyncListUtil<TT;>;"
    if-ltz p1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mItemCount:I

    if-lt p1, v1, :cond_1

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not within 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mItemCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTileList:Lorg/telegram/messenger/support/util/TileList;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/util/TileList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 155
    .local v0, "item":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/support/util/AsyncListUtil;->isRefreshPending()Z

    move-result v1

    if-nez v1, :cond_2

    .line 156
    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    :cond_2
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil;, "Lorg/telegram/messenger/support/util/AsyncListUtil<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mItemCount:I

    return v0
.end method

.method varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 76
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil;, "Lorg/telegram/messenger/support/util/AsyncListUtil<TT;>;"
    const-string/jumbo v0, "AsyncListUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[MAIN] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public onRangeChanged()V
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil;, "Lorg/telegram/messenger/support/util/AsyncListUtil<TT;>;"
    invoke-direct {p0}, Lorg/telegram/messenger/support/util/AsyncListUtil;->isRefreshPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/util/AsyncListUtil;->updateRange()V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mAllowScrollHints:Z

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 130
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil;, "Lorg/telegram/messenger/support/util/AsyncListUtil<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 131
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mBackgroundProxy:Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;

    iget v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mRequestedGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mRequestedGeneration:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;->refresh(I)V

    .line 132
    return-void
.end method

.method updateRange()V
    .locals 6

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil;, "Lorg/telegram/messenger/support/util/AsyncListUtil<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mViewCallback:Lorg/telegram/messenger/support/util/AsyncListUtil$ViewCallback;

    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/util/AsyncListUtil$ViewCallback;->getItemRangeInto([I)V

    .line 176
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v5

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v4

    if-gez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v5

    iget v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mItemCount:I

    if-ge v0, v1, :cond_0

    .line 184
    iget-boolean v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mAllowScrollHints:Z

    if-nez v0, :cond_3

    .line 185
    iput v4, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mScrollHint:I

    .line 195
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mPrevRange:[I

    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v4

    aput v1, v0, v4

    .line 196
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mPrevRange:[I

    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v5

    aput v1, v0, v5

    .line 198
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mViewCallback:Lorg/telegram/messenger/support/util/AsyncListUtil$ViewCallback;

    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    iget-object v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRangeExtended:[I

    iget v3, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mScrollHint:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/support/util/AsyncListUtil$ViewCallback;->extendRangeInto([I[II)V

    .line 199
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRangeExtended:[I

    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v4

    iget-object v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRangeExtended:[I

    aget v2, v2, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v0, v4

    .line 200
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRangeExtended:[I

    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v5

    iget-object v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRangeExtended:[I

    aget v2, v2, v5

    iget v3, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    .line 201
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v5

    .line 203
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mBackgroundProxy:Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;

    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v4

    iget-object v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    aget v2, v2, v5

    iget-object v3, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRangeExtended:[I

    aget v3, v3, v4

    iget-object v4, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRangeExtended:[I

    aget v4, v4, v5

    iget v5, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mScrollHint:I

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    goto :goto_0

    .line 186
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mPrevRange:[I

    aget v1, v1, v5

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mPrevRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v5

    if-le v0, v1, :cond_5

    .line 188
    :cond_4
    iput v4, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mScrollHint:I

    goto :goto_1

    .line 189
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mPrevRange:[I

    aget v1, v1, v4

    if-ge v0, v1, :cond_6

    .line 190
    iput v5, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mScrollHint:I

    goto/16 :goto_1

    .line 191
    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mPrevRange:[I

    aget v1, v1, v4

    if-le v0, v1, :cond_2

    .line 192
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mScrollHint:I

    goto/16 :goto_1
.end method
