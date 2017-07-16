.class public Lorg/telegram/ui/Components/Favorite;
.super Ljava/lang/Object;
.source "Favorite.java"


# static fields
.field private static Instance:Lorg/telegram/ui/Components/Favorite; = null

.field private static final TAG:Ljava/lang/String; = "Favorite"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Components/Favorite;->Instance:Lorg/telegram/ui/Components/Favorite;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->databaseHandler:Lorg/telegram/SQLite/DatabaseHandler;

    invoke-virtual {v0}, Lorg/telegram/SQLite/DatabaseHandler;->getList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Favorite;->list:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public static getInstance()Lorg/telegram/ui/Components/Favorite;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lorg/telegram/ui/Components/Favorite;->Instance:Lorg/telegram/ui/Components/Favorite;

    .line 17
    .local v0, "localInstance":Lorg/telegram/ui/Components/Favorite;
    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lorg/telegram/ui/Components/Favorite;

    .end local v0    # "localInstance":Lorg/telegram/ui/Components/Favorite;
    invoke-direct {v0}, Lorg/telegram/ui/Components/Favorite;-><init>()V

    .restart local v0    # "localInstance":Lorg/telegram/ui/Components/Favorite;
    sput-object v0, Lorg/telegram/ui/Components/Favorite;->Instance:Lorg/telegram/ui/Components/Favorite;

    .line 20
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addFavorite(Ljava/lang/Long;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/Favorite;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->databaseHandler:Lorg/telegram/SQLite/DatabaseHandler;

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/DatabaseHandler;->addFavorite(Ljava/lang/Long;)V

    .line 36
    return-void
.end method

.method public deleteFavorite(Ljava/lang/Long;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Components/Favorite;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->databaseHandler:Lorg/telegram/SQLite/DatabaseHandler;

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/DatabaseHandler;->deleteFavorite(Ljava/lang/Long;)V

    .line 42
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/Favorite;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Components/Favorite;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isFavorite(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/Favorite;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
