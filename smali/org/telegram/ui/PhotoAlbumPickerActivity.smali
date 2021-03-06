.class public Lorg/telegram/ui/PhotoAlbumPickerActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PhotoAlbumPickerActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;,
        Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;
    }
.end annotation


# static fields
.field public static imageFilter:Ljava/lang/String; = null

.field private static final item_photos:I = 0x2

.field private static final item_video:I = 0x3


# instance fields
.field private albumsSorted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private allowCaption:Z

.field private allowGifs:Z

.field private chatActivity:Lorg/telegram/ui/ChatActivity;

.field private columnsCount:I

.field private delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

.field private dropDown:Landroid/widget/TextView;

.field private dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private emptyView:Landroid/widget/TextView;

.field private listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loading:Z

.field private pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

.field private progressView:Landroid/widget/FrameLayout;

.field private recentGifImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private recentImagesGifKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private recentImagesWebKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private recentWebImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMode:I

.field private selectedPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation
.end field

.field private selectedWebPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private sendPressed:Z

.field private singlePhoto:Z

.field private videoAlbumsSorted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-string/jumbo v0, "*"

    sput-object v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->imageFilter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZZLorg/telegram/ui/ChatActivity;)V
    .locals 1
    .param p1, "singlePhoto"    # Z
    .param p2, "allowGifs"    # Z
    .param p3, "allowCaption"    # Z
    .param p4, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 60
    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    .line 61
    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->videoAlbumsSorted:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesWebKeys:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesGifKeys:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    .line 92
    iput-object p4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z

    .line 94
    iput-boolean p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowGifs:Z

    .line 95
    iput-boolean p3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowCaption:Z

    .line 96
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/PhotoAlbumPickerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->videoAlbumsSorted:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PhotoAlbumPickerActivity;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->openPhotoPicker(Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowGifs:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendSelectedPhotos()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/PickerBottomLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    return-object v0
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 425
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 427
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/PhotoAlbumPickerActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$6;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 438
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method private fixLayoutInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 441
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 446
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 447
    .local v2, "rotation":I
    iput v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    .line 448
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 449
    :cond_2
    const/4 v3, 0x4

    iput v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    .line 451
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 453
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_0

    .line 454
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_4

    .line 455
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 456
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_5

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 457
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_6

    .line 461
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 456
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 463
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method private openPhotoPicker(Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .locals 9
    .param p1, "albumEntry"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p2, "type"    # I

    .prologue
    .line 469
    const/4 v5, 0x0

    .line 470
    .local v5, "recentImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    if-nez p1, :cond_0

    .line 471
    if-nez p2, :cond_1

    .line 472
    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    .line 477
    :cond_0
    :goto_0
    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z

    iget-boolean v7, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowCaption:Z

    iget-object v8, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    move v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/PhotoPickerActivity;-><init>(ILorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;ZZLorg/telegram/ui/ChatActivity;)V

    .line 478
    .local v0, "fragment":Lorg/telegram/ui/PhotoPickerActivity;
    new-instance v1, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    .line 500
    invoke-virtual {p0, v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 501
    return-void

    .line 473
    .end local v0    # "fragment":Lorg/telegram/ui/PhotoPickerActivity;
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 474
    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private sendSelectedPhotos()V
    .locals 20

    .prologue
    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPressed:Z

    if-eqz v13, :cond_2

    .line 422
    :cond_1
    :goto_0
    return-void

    .line 364
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPressed:Z

    .line 365
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v8, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v2, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v6, "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 369
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 370
    .local v7, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    if-eqz v13, :cond_6

    .line 371
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v13, :cond_4

    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    new-instance v13, Ljava/util/ArrayList;

    iget-object v15, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_3
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 372
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 373
    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .line 374
    :cond_6
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 375
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v13, :cond_7

    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    new-instance v13, Ljava/util/ArrayList;

    iget-object v15, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_5
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 376
    :cond_7
    const/4 v13, 0x0

    goto :goto_4

    .line 377
    :cond_8
    const/4 v13, 0x0

    goto :goto_5

    .line 380
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    .end local v7    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v12, "webPhotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    const/4 v5, 0x0

    .line 382
    .local v5, "gifChanged":Z
    const/4 v11, 0x0

    .line 383
    .local v11, "webChange":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_a
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 384
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MediaController$SearchImage;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 385
    .local v10, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    if-eqz v13, :cond_d

    .line 386
    iget-object v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    if-eqz v13, :cond_b

    iget-object v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_7
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    new-instance v13, Ljava/util/ArrayList;

    iget-object v15, v10, Lorg/telegram/messenger/MediaController$SearchImage;->stickers:Ljava/util/ArrayList;

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_8
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v13, v0

    iput v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->date:I

    .line 394
    iget v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    if-nez v13, :cond_f

    .line 395
    const/4 v11, 0x1

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesWebKeys:Ljava/util/HashMap;

    iget-object v15, v10, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 397
    .local v9, "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    if-eqz v9, :cond_e

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 399
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 387
    .end local v9    # "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_b
    const/4 v13, 0x0

    goto :goto_7

    .line 388
    :cond_c
    const/4 v13, 0x0

    goto :goto_8

    .line 390
    :cond_d
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 401
    .restart local v9    # "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 403
    .end local v9    # "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_f
    iget v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_a

    .line 404
    const/4 v5, 0x1

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesGifKeys:Ljava/util/HashMap;

    iget-object v15, v10, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 406
    .restart local v9    # "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    if-eqz v9, :cond_10

    .line 407
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 408
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 410
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 414
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .end local v9    # "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v10    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_11
    if-eqz v11, :cond_12

    .line 415
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesStorage;->putWebRecent(Ljava/util/ArrayList;)V

    .line 417
    :cond_12
    if-eqz v5, :cond_13

    .line 418
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesStorage;->putWebRecent(Ljava/util/ArrayList;)V

    .line 421
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    invoke-interface {v13, v8, v2, v6, v12}, Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;->didSelectPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v12, 0x40800000    # 4.0f

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 122
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, -0xcccccd

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 123
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 124
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, -0xc2c2c3

    invoke-virtual {v4, v5, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 125
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f0200b6

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 126
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 156
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 157
    .local v2, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v4, 0x7f0200bd

    invoke-virtual {v2, v10, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 159
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fragmentView:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 162
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 164
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z

    if-nez v4, :cond_2

    .line 165
    iput v8, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I

    .line 167
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {v4, p1, v2, v8, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 168
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 169
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x2

    const-string/jumbo v6, "PickerPhotos"

    const v7, 0x7f0704de

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 170
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x3

    const-string/jumbo v6, "PickerVideo"

    const v7, 0x7f0704df

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 171
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;)V

    .line 172
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 173
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 174
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 175
    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 176
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v4, 0x42800000    # 64.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_0
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 177
    const/16 v4, 0x33

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 178
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    .line 187
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 188
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 189
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 190
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 191
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 192
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 194
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    const v5, 0x7f0200c7

    invoke-virtual {v4, v8, v8, v5, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 195
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 196
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v8, v8, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 197
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v5, "PickerPhotos"

    const v6, 0x7f0704de

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;)V

    .line 199
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 201
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 202
    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 203
    const/16 v4, 0x10

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 204
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 210
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v5, v8, v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 211
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 212
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setHorizontalScrollBarEnabled(Z)V

    .line 213
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 214
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v5, p1, v10, v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 215
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setDrawingCacheEnabled(Z)V

    .line 216
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 217
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 218
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 219
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 220
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 221
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 223
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v5, -0xcccccd

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 225
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    .line 226
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const v5, -0x7f7f80

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 228
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 229
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const-string/jumbo v5, "NoPhotos"

    const v6, 0x7f0703e0

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 232
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 233
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 234
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 235
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 236
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$3;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 244
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    .line 245
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 246
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 248
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 249
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 250
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 251
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    new-instance v3, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    .line 254
    .local v3, "progressBar":Lorg/telegram/ui/Components/RadialProgressView;
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 255
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 256
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 257
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 258
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 259
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    new-instance v4, Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/PickerBottomLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    .line 262
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 263
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PickerBottomLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 264
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 265
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 266
    const/16 v4, 0x50

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 267
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/PickerBottomLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$4;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$5;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 283
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 284
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 289
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5, v10}, Lorg/telegram/ui/Components/PickerBottomLayout;->updateSelectedCount(IZ)V

    .line 291
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fragmentView:Landroid/view/View;

    return-object v4

    .line 176
    .end local v3    # "progressBar":Lorg/telegram/ui/Components/RadialProgressView;
    :cond_1
    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto/16 :goto_0

    .line 206
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "Gallery"

    const v6, 0x7f07029f

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 286
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "progressBar":Lorg/telegram/ui/Components/RadialProgressView;
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 287
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 320
    sget v3, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    if-ne p1, v3, :cond_4

    .line 321
    aget-object v3, p2, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 322
    .local v0, "guid":I
    iget v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->classGuid:I

    if-ne v3, v0, :cond_3

    .line 323
    aget-object v3, p2, v4

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    .line 324
    const/4 v3, 0x3

    aget-object v3, p2, v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->videoAlbumsSorted:Ljava/util/ArrayList;

    .line 325
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 326
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 328
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getEmptyView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 329
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 331
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    if-eqz v3, :cond_2

    .line 332
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 334
    :cond_2
    iput-boolean v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    .line 354
    .end local v0    # "guid":I
    :cond_3
    :goto_0
    return-void

    .line 336
    :cond_4
    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v3, :cond_5

    .line 337
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->removeSelfFromStack()V

    goto :goto_0

    .line 338
    :cond_5
    sget v3, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    if-ne p1, v3, :cond_3

    .line 339
    aget-object v3, p2, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 340
    .local v2, "type":I
    if-nez v2, :cond_6

    .line 341
    aget-object v3, p2, v4

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    .line 342
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesWebKeys:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 343
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 344
    .local v1, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesWebKeys:Ljava/util/HashMap;

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 346
    .end local v1    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_6
    if-ne v2, v4, :cond_3

    .line 347
    aget-object v3, p2, v4

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    .line 348
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesGifKeys:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 349
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 350
    .restart local v1    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesGifKeys:Ljava/util/HashMap;

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 313
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 314
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fixLayout()V

    .line 315
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 100
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    .line 101
    sget-object v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->imageFilter:Ljava/lang/String;

    sput-object v0, Lorg/telegram/messenger/MediaController;->iFilter:Ljava/lang/String;

    .line 102
    sget-object v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->imageFilter:Ljava/lang/String;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z

    .line 103
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->classGuid:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 104
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 105
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 106
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 107
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 113
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 114
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 115
    const-string/jumbo v0, "*"

    sput-object v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->imageFilter:Ljava/lang/String;

    .line 116
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 117
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    .line 300
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 304
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 308
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fixLayout()V

    .line 309
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    .prologue
    .line 357
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    .line 358
    return-void
.end method
