.class public Lorg/telegram/messenger/ContactsController;
.super Ljava/lang/Object;
.source "ContactsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ContactsController$Contact;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/ContactsController;

.field private static final loadContactsSync:Ljava/lang/Object;


# instance fields
.field private callPrivacyRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field private completedRequestsCount:I

.field public contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation
.end field

.field public contactsBook:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private contactsBookLoaded:Z

.field public contactsBookSPhones:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation
.end field

.field public contactsByPhone:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation
.end field

.field public contactsDict:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation
.end field

.field public contactsLoaded:Z

.field private contactsSyncInProgress:Z

.field private currentAccount:Landroid/accounts/Account;

.field private delayedContactsUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private deleteAccountTTL:I

.field private groupPrivacyRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreChanges:Z

.field private inviteText:Ljava/lang/String;

.field private lastContactsVersions:Ljava/lang/String;

.field private loadingCallsInfo:I

.field private loadingContacts:Z

.field private loadingDeleteInfo:I

.field private loadingGroupInfo:I

.field private loadingLastSeenInfo:I

.field private final observerLock:Ljava/lang/Object;

.field public phoneBookContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private privacyRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field private projectionNames:[Ljava/lang/String;

.field private projectionPhones:[Ljava/lang/String;

.field private sectionsToReplace:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sortedUsersMutualSectionsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sortedUsersSectionsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private updatingInviteText:Z

.field public usersMutualSectionsDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;>;"
        }
    .end annotation
.end field

.field public usersSectionsDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/ContactsController;->Instance:Lorg/telegram/messenger/ContactsController;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v4, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 45
    iput-boolean v4, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 46
    iput-boolean v4, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    .line 47
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    .line 48
    iput-boolean v4, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 49
    iput-boolean v4, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    .line 50
    const-string/jumbo v1, ""

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    .line 53
    iput-boolean v4, p0, Lorg/telegram/messenger/ContactsController;->updatingInviteText:Z

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    .line 61
    iput-object v2, p0, Lorg/telegram/messenger/ContactsController;->privacyRules:Ljava/util/ArrayList;

    .line 62
    iput-object v2, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    .line 63
    iput-object v2, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    .line 75
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "contact_id"

    aput-object v2, v1, v4

    const-string/jumbo v2, "data1"

    aput-object v2, v1, v3

    const-string/jumbo v2, "data2"

    aput-object v2, v1, v5

    const-string/jumbo v2, "data3"

    aput-object v2, v1, v6

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->projectionPhones:[Ljava/lang/String;

    .line 81
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "contact_id"

    aput-object v2, v1, v4

    const-string/jumbo v2, "data2"

    aput-object v2, v1, v3

    const-string/jumbo v2, "data3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "display_name"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string/jumbo v3, "data5"

    aput-object v3, v1, v2

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->projectionNames:[Ljava/lang/String;

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    .line 94
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    .line 121
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "needGetStatuses"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatuses()V

    .line 126
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00c0"

    const-string/jumbo v3, "A"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00c1"

    const-string/jumbo v3, "A"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00c4"

    const-string/jumbo v3, "A"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00d9"

    const-string/jumbo v3, "U"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00da"

    const-string/jumbo v3, "U"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00dc"

    const-string/jumbo v3, "U"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00cc"

    const-string/jumbo v3, "I"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00cd"

    const-string/jumbo v3, "I"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00cf"

    const-string/jumbo v3, "I"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00c8"

    const-string/jumbo v3, "E"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00c9"

    const-string/jumbo v3, "E"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00ca"

    const-string/jumbo v3, "E"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00cb"

    const-string/jumbo v3, "E"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00d2"

    const-string/jumbo v3, "O"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00d3"

    const-string/jumbo v3, "O"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00d6"

    const-string/jumbo v3, "O"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00c7"

    const-string/jumbo v3, "C"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00d1"

    const-string/jumbo v3, "N"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0178"

    const-string/jumbo v3, "Y"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00dd"

    const-string/jumbo v3, "Y"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0162"

    const-string/jumbo v3, "Y"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/ContactsController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/ContactsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    return p1
.end method

.method static synthetic access$008(Lorg/telegram/messenger/ContactsController;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->updateUnregisteredContacts(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/messenger/ContactsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->updatingInviteText:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/ContactsController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/ContactsController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->performWriteContactsToPhoneBook()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/ContactsController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->saveContactsLoadTime()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/ContactsController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatusesMaybe()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->performWriteContactsToPhoneBookInternal(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/ContactsController;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->deleteContactFromPhoneBook(I)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/ContactsController;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->buildContactsSectionsArrays(Z)V

    return-void
.end method

.method static synthetic access$1802(Lorg/telegram/messenger/ContactsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I

    return p1
.end method

.method static synthetic access$1902(Lorg/telegram/messenger/ContactsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/ContactsController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->checkContactsInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->privacyRules:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2102(Lorg/telegram/messenger/ContactsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->loadingLastSeenInfo:I

    return p1
.end method

.method static synthetic access$2202(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2302(Lorg/telegram/messenger/ContactsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->loadingCallsInfo:I

    return p1
.end method

.method static synthetic access$2402(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2502(Lorg/telegram/messenger/ContactsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->loadingGroupInfo:I

    return p1
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/ContactsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/ContactsController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->readContactsFromPhoneBook()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/ContactsController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/messenger/ContactsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/messenger/ContactsController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/ContactsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ContactsController;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/concurrent/ConcurrentHashMap;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private applyContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1401
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "userDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p3, "newC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .local p4, "contactsTD":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_0

    if-nez p4, :cond_3

    .line 1402
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    .end local p3    # "newC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct/range {p3 .. p3}, Ljava/util/ArrayList;-><init>()V

    .line 1403
    .restart local p3    # "newC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    new-instance p4, Ljava/util/ArrayList;

    .end local p4    # "contactsTD":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {p4 .. p4}, Ljava/util/ArrayList;-><init>()V

    .line 1404
    .restart local p4    # "contactsTD":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_3

    .line 1405
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1406
    .local v10, "uid":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_2

    .line 1407
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 1408
    .local v2, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    .line 1409
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1404
    .end local v2    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1410
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-gez v12, :cond_1

    .line 1411
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    neg-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1415
    .end local v1    # "a":I
    .end local v10    # "uid":Ljava/lang/Integer;
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "process update - contacts add = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " delete = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1417
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1418
    .local v8, "toAdd":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1419
    .local v9, "toDelete":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 1421
    .local v7, "reloadContacts":Z
    const/4 v1, 0x0

    .restart local v1    # "a":I
    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_a

    .line 1422
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1423
    .local v5, "newContact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    const/4 v11, 0x0

    .line 1424
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz p2, :cond_4

    .line 1425
    iget v12, v5, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    .line 1427
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    if-nez v11, :cond_6

    .line 1428
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget v13, v5, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 1432
    :goto_3
    if-eqz v11, :cond_5

    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1433
    :cond_5
    const/4 v7, 0x1

    .line 1421
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1430
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v11, v13}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_3

    .line 1437
    :cond_7
    iget-object v12, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1438
    .local v2, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    if-eqz v2, :cond_8

    .line 1439
    iget-object v12, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1440
    .local v4, "index":I
    const/4 v12, -0x1

    if-eq v4, v12, :cond_8

    .line 1441
    iget-object v12, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1444
    .end local v4    # "index":I
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_9

    .line 1445
    const-string/jumbo v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    :cond_9
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1450
    .end local v2    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v5    # "newContact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a
    const/4 v1, 0x0

    :goto_5
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_11

    .line 1451
    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1452
    .restart local v10    # "uid":Ljava/lang/Integer;
    sget-object v12, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v13, Lorg/telegram/messenger/ContactsController$13;

    invoke-direct {v13, p0, v10}, Lorg/telegram/messenger/ContactsController$13;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/lang/Integer;)V

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1459
    const/4 v11, 0x0

    .line 1460
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz p2, :cond_b

    .line 1461
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    .line 1463
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_b
    if-nez v11, :cond_d

    .line 1464
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 1468
    :goto_6
    if-nez v11, :cond_e

    .line 1469
    const/4 v7, 0x1

    .line 1450
    :cond_c
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1466
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v11, v13}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_6

    .line 1473
    :cond_e
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 1474
    iget-object v12, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1475
    .restart local v2    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    if-eqz v2, :cond_f

    .line 1476
    iget-object v12, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1477
    .restart local v4    # "index":I
    const/4 v12, -0x1

    if-eq v4, v12, :cond_f

    .line 1478
    iget-object v12, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1481
    .end local v4    # "index":I
    :cond_f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_10

    .line 1482
    const-string/jumbo v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    :cond_10
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1488
    .end local v2    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v10    # "uid":Ljava/lang/Integer;
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_11
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-nez v12, :cond_12

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_13

    .line 1489
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/telegram/messenger/MessagesStorage;->applyPhoneBookUpdates(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    :cond_13
    if-eqz v7, :cond_14

    .line 1493
    sget-object v12, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v13, Lorg/telegram/messenger/ContactsController$14;

    invoke-direct {v13, p0}, Lorg/telegram/messenger/ContactsController$14;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1530
    :goto_8
    return-void

    .line 1500
    :cond_14
    move-object/from16 v6, p3

    .line 1501
    .local v6, "newContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    move-object/from16 v3, p4

    .line 1502
    .local v3, "contactsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v12, Lorg/telegram/messenger/ContactsController$15;

    invoke-direct {v12, p0, v6, v3}, Lorg/telegram/messenger/ContactsController$15;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method private buildContactsSectionsArrays(Z)V
    .locals 13
    .param p1, "sort"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1268
    if-eqz p1, :cond_0

    .line 1269
    iget-object v8, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/messenger/ContactsController$10;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/ContactsController$10;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1281
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1282
    .local v1, "ids":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1283
    .local v4, "sectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    .local v5, "sortedSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1286
    .local v7, "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 1287
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v6, :cond_1

    .line 1291
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    .line 1292
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_2

    .line 1293
    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1295
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    .line 1296
    const-string/jumbo v2, "#"

    .line 1300
    :goto_1
    iget-object v9, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1301
    .local v3, "replace":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1302
    move-object v2, v3

    .line 1304
    :cond_3
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1305
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    if-nez v0, :cond_4

    .line 1306
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    :cond_4
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_5

    .line 1312
    const-string/jumbo v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    :cond_5
    iget v9, v7, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1298
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v3    # "replace":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1316
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v7    # "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 1317
    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1319
    new-instance v8, Lorg/telegram/messenger/ContactsController$11;

    invoke-direct {v8, p0}, Lorg/telegram/messenger/ContactsController$11;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1333
    iput-object v4, p0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 1334
    iput-object v5, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 1335
    return-void
.end method

.method private checkContactsInternal()Z
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 302
    const/4 v11, 0x0

    .line 304
    .local v11, "reload":Z
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    :goto_0
    return v1

    .line 307
    :cond_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 308
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 310
    .local v10, "pCur":Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "version"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 311
    if-eqz v10, :cond_4

    .line 312
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v7, "currentVersion":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    const-string/jumbo v1, "version"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 315
    .local v6, "col":I
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 323
    .end local v6    # "col":I
    .end local v7    # "currentVersion":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 324
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    if-eqz v10, :cond_1

    .line 327
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "pCur":Landroid/database/Cursor;
    :cond_1
    :goto_2
    move v1, v11

    .line 333
    goto :goto_0

    .line 317
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "currentVersion":Ljava/lang/StringBuilder;
    .restart local v10    # "pCur":Landroid/database/Cursor;
    :cond_2
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 318
    .local v9, "newContactsVersion":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 319
    const/4 v11, 0x1

    .line 321
    :cond_3
    iput-object v9, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 326
    .end local v7    # "currentVersion":Ljava/lang/StringBuilder;
    .end local v9    # "newContactsVersion":Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_1

    .line 327
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 330
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v10    # "pCur":Landroid/database/Cursor;
    :catch_1
    move-exception v8

    .line 331
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 326
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v10    # "pCur":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_5

    .line 327
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method private deleteContactFromPhoneBook(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 1637
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1653
    :goto_0
    return-void

    .line 1640
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1641
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 1642
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1644
    :try_start_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1645
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "caller_is_syncadapter"

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "account_name"

    iget-object v5, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "account_type"

    iget-object v5, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1646
    .local v2, "rawContactUri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sync2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1650
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "rawContactUri":Landroid/net/Uri;
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1651
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 1652
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1642
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 1647
    :catch_0
    move-exception v1

    .line 1648
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "firstName"    # Ljava/lang/String;
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2021
    if-eqz p0, :cond_0

    .line 2022
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2024
    :cond_0
    if-eqz p1, :cond_1

    .line 2025
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2027
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_2
    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2028
    .local v0, "result":Ljava/lang/StringBuilder;
    sget v1, Lorg/telegram/messenger/LocaleController;->nameDisplayOrder:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 2029
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 2030
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 2032
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2033
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .end local v0    # "result":Ljava/lang/StringBuilder;
    :cond_4
    move v2, v1

    .line 2027
    goto :goto_0

    .line 2035
    .restart local v0    # "result":Ljava/lang/StringBuilder;
    :cond_5
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 2036
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2039
    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 2040
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2041
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 2042
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2045
    :cond_7
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 2046
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getInstance()Lorg/telegram/messenger/ContactsController;
    .locals 4

    .prologue
    .line 108
    sget-object v0, Lorg/telegram/messenger/ContactsController;->Instance:Lorg/telegram/messenger/ContactsController;

    .line 109
    .local v0, "localInstance":Lorg/telegram/messenger/ContactsController;
    if-nez v0, :cond_1

    .line 110
    const-class v3, Lorg/telegram/messenger/ContactsController;

    monitor-enter v3

    .line 111
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ContactsController;->Instance:Lorg/telegram/messenger/ContactsController;

    .line 112
    if-nez v0, :cond_0

    .line 113
    new-instance v1, Lorg/telegram/messenger/ContactsController;

    invoke-direct {v1}, Lorg/telegram/messenger/ContactsController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/ContactsController;
    .local v1, "localInstance":Lorg/telegram/messenger/ContactsController;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/ContactsController;->Instance:Lorg/telegram/messenger/ContactsController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 115
    .end local v1    # "localInstance":Lorg/telegram/messenger/ContactsController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/ContactsController;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 117
    :cond_1
    return-object v0

    .line 115
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/ContactsController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/ContactsController;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/ContactsController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/ContactsController;
    goto :goto_0
.end method

.method private hasContactsPermission()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1338
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 1339
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v8

    .line 1359
    :goto_0
    return v1

    :cond_0
    move v1, v9

    .line 1339
    goto :goto_0

    .line 1341
    :cond_1
    const/4 v6, 0x0

    .line 1343
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1344
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lorg/telegram/messenger/ContactsController;->projectionPhones:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1345
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 1352
    :cond_2
    if-eqz v6, :cond_3

    .line 1353
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    move v1, v9

    .line 1357
    goto :goto_0

    .line 1355
    :catch_0
    move-exception v7

    .line 1356
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1352
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz v6, :cond_5

    .line 1353
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_5
    :goto_2
    move v1, v8

    .line 1359
    goto :goto_0

    .line 1355
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :catch_1
    move-exception v7

    .line 1356
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1348
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 1349
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1352
    if-eqz v6, :cond_5

    .line 1353
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 1355
    :catch_3
    move-exception v7

    .line 1356
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1351
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 1352
    if-eqz v6, :cond_6

    .line 1353
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1357
    :cond_6
    :goto_3
    throw v1

    .line 1355
    :catch_4
    move-exception v7

    .line 1356
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private performWriteContactsToPhoneBook()V
    .locals 3

    .prologue
    .line 1390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    .local v0, "contactsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1392
    sget-object v1, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/ContactsController$12;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/ContactsController$12;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1398
    return-void
.end method

.method private performWriteContactsToPhoneBookInternal(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1364
    .local p1, "contactsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1387
    :cond_0
    :goto_0
    return-void

    .line 1367
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "account_name"

    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "account_type"

    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1368
    .local v1, "rawContactUri":Landroid/net/Uri;
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "sync2"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1369
    .local v8, "c1":Landroid/database/Cursor;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1370
    .local v7, "bookContacts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-eqz v8, :cond_0

    .line 1371
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1372
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1384
    .end local v1    # "rawContactUri":Landroid/net/Uri;
    .end local v7    # "bookContacts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v8    # "c1":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1385
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1374
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v1    # "rawContactUri":Landroid/net/Uri;
    .restart local v7    # "bookContacts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .restart local v8    # "c1":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1376
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 1377
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1378
    .local v10, "u":Lorg/telegram/tgnet/TLRPC$TL_contact;
    iget v0, v10, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1379
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v2, v10, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 1380
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/messenger/ContactsController;->addContactToPhoneBook(Lorg/telegram/tgnet/TLRPC$User;Z)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1376
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private readContactsFromPhoneBook()Ljava/util/HashMap;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v9, "contactsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v3

    if-nez v3, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-object v9

    .line 364
    :cond_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 366
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 367
    .local v19, "shortContacts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/ContactsController$Contact;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v15, "idsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController;->projectionPhones:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 369
    .local v18, "pCur":Landroid/database/Cursor;
    if-eqz v18, :cond_d

    .line 370
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_c

    .line 371
    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 372
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 373
    .local v17, "number":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 376
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 377
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 381
    move-object/from16 v20, v17

    .line 383
    .local v20, "shortNumber":Ljava/lang/String;
    const-string/jumbo v3, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 384
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 387
    :cond_3
    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 391
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 392
    .local v13, "id":Ljava/lang/Integer;
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 393
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_4
    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 397
    .local v23, "type":I
    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ContactsController$Contact;

    .line 398
    .local v8, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    if-nez v8, :cond_5

    .line 399
    new-instance v8, Lorg/telegram/messenger/ContactsController$Contact;

    .end local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    invoke-direct {v8}, Lorg/telegram/messenger/ContactsController$Contact;-><init>()V

    .line 400
    .restart local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    const-string/jumbo v3, ""

    iput-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 401
    const-string/jumbo v3, ""

    iput-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 402
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    .line 403
    invoke-virtual {v9, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_5
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    if-nez v23, :cond_7

    .line 411
    const/4 v3, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 412
    .local v10, "custom":Ljava/lang/String;
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    .end local v10    # "custom":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 508
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v13    # "id":Ljava/lang/Integer;
    .end local v15    # "idsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "number":Ljava/lang/String;
    .end local v18    # "pCur":Landroid/database/Cursor;
    .end local v19    # "shortContacts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v20    # "shortNumber":Ljava/lang/String;
    .end local v23    # "type":I
    :catch_0
    move-exception v11

    .line 509
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 510
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 412
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .restart local v10    # "custom":Ljava/lang/String;
    .restart local v13    # "id":Ljava/lang/Integer;
    .restart local v15    # "idsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v17    # "number":Ljava/lang/String;
    .restart local v18    # "pCur":Landroid/database/Cursor;
    .restart local v19    # "shortContacts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .restart local v20    # "shortNumber":Ljava/lang/String;
    .restart local v23    # "type":I
    :cond_6
    :try_start_1
    const-string/jumbo v4, "PhoneMobile"

    const v5, 0x7f070425

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 413
    .end local v10    # "custom":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_8

    .line 414
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string/jumbo v4, "PhoneHome"

    const v5, 0x7f070423

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 415
    :cond_8
    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v0, v3, :cond_9

    .line 416
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string/jumbo v4, "PhoneMobile"

    const v5, 0x7f070425

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 417
    :cond_9
    const/4 v3, 0x3

    move/from16 v0, v23

    if-ne v0, v3, :cond_a

    .line 418
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string/jumbo v4, "PhoneWork"

    const v5, 0x7f07042b

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 419
    :cond_a
    const/16 v3, 0xc

    move/from16 v0, v23

    if-ne v0, v3, :cond_b

    .line 420
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string/jumbo v4, "PhoneMain"

    const v5, 0x7f070424

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 422
    :cond_b
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string/jumbo v4, "PhoneOther"

    const v5, 0x7f07042a

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 427
    .end local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v13    # "id":Ljava/lang/Integer;
    .end local v17    # "number":Ljava/lang/String;
    .end local v20    # "shortNumber":Ljava/lang/String;
    .end local v23    # "type":I
    :cond_c
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_d
    const-string/jumbo v3, ","

    invoke-static {v3, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    .line 431
    .local v14, "ids":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController;->projectionNames:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "contact_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mimetype"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 432
    if-eqz v18, :cond_0

    .line 433
    :cond_e
    :goto_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 434
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 435
    .local v13, "id":I
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 436
    .local v12, "fname":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 437
    .local v21, "sname":Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 438
    .local v22, "sname2":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 439
    .local v16, "mname":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ContactsController$Contact;

    .line 440
    .restart local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    if-eqz v8, :cond_e

    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 441
    iput-object v12, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 442
    move-object/from16 v0, v21

    iput-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 443
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 444
    const-string/jumbo v3, ""

    iput-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 446
    :cond_f
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 447
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 453
    :cond_10
    :goto_5
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-nez v3, :cond_11

    .line 454
    const-string/jumbo v3, ""

    iput-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 456
    :cond_11
    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 457
    move-object/from16 v0, v22

    iput-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto/16 :goto_4

    .line 450
    :cond_12
    move-object/from16 v0, v16

    iput-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto :goto_5

    .line 461
    .end local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v12    # "fname":Ljava/lang/String;
    .end local v13    # "id":I
    .end local v16    # "mname":Ljava/lang/String;
    .end local v21    # "sname":Ljava/lang/String;
    .end local v22    # "sname2":Ljava/lang/String;
    :cond_13
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private reloadContactsStatusesMaybe()V
    .locals 8

    .prologue
    .line 1199
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mainconfig"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1200
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "lastReloadStatusTime"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1201
    .local v2, "lastReloadStatusTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 1202
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatuses()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "lastReloadStatusTime":J
    :cond_0
    :goto_0
    return-void

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private saveContactsLoadTime()V
    .locals 6

    .prologue
    .line 1211
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1212
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "lastReloadStatusTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updateUnregisteredContacts(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1219
    .local p1, "contactsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1221
    .local v1, "contactsPhonesShort":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_2

    .line 1222
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1223
    .local v8, "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 1224
    .local v7, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v7, :cond_0

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1221
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1227
    :cond_1
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1230
    .end local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v8    # "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1231
    .local v5, "sortedPhoneBookContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/ContactsController$Contact;>;"
    iget-object v9, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1232
    .local v3, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1233
    .local v8, "value":Lorg/telegram/messenger/ContactsController$Contact;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1235
    .local v2, "id":I
    const/4 v4, 0x0

    .line 1236
    .local v4, "skip":Z
    const/4 v0, 0x0

    :goto_3
    iget-object v9, v8, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 1237
    iget-object v9, v8, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1238
    .local v6, "sphone":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_6

    .line 1239
    :cond_4
    const/4 v4, 0x1

    .line 1243
    .end local v6    # "sphone":Ljava/lang/String;
    :cond_5
    if-nez v4, :cond_3

    .line 1247
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1236
    .restart local v6    # "sphone":Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1249
    .end local v2    # "id":I
    .end local v3    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v4    # "skip":Z
    .end local v6    # "sphone":Ljava/lang/String;
    .end local v8    # "value":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_7
    new-instance v9, Lorg/telegram/messenger/ContactsController$9;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/ContactsController$9;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-static {v5, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1264
    iput-object v5, p0, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    .line 1265
    return-void
.end method


# virtual methods
.method public addContact(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 6
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 1672
    if-eqz p1, :cond_0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1752
    :cond_0
    :goto_0
    return-void

    .line 1676
    :cond_1
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;-><init>()V

    .line 1677
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1678
    .local v1, "contactsParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;>;"
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 1679
    .local v0, "c":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 1680
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 1683
    :cond_2
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 1684
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 1685
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 1686
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1687
    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    .line 1688
    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->replace:Z

    .line 1692
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/ContactsController$17;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/ContactsController$17;-><init>(Lorg/telegram/messenger/ContactsController;)V

    const/4 v5, 0x6

    invoke-virtual {v3, v2, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0
.end method

.method public addContactToPhoneBook(Lorg/telegram/tgnet/TLRPC$User;Z)J
    .locals 12
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "check"    # Z

    .prologue
    const-wide/16 v6, -0x1

    const/4 v11, 0x0

    .line 1571
    iget-object v8, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1633
    :cond_0
    :goto_0
    return-wide v6

    .line 1574
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1577
    const-wide/16 v6, -0x1

    .line 1578
    .local v6, "res":J
    iget-object v9, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1579
    const/4 v8, 0x1

    :try_start_0
    iput-boolean v8, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 1580
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1581
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1582
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    if-eqz p2, :cond_2

    .line 1584
    :try_start_1
    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string/jumbo v9, "caller_is_syncadapter"

    const-string/jumbo v10, "true"

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string/jumbo v9, "account_name"

    iget-object v10, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string/jumbo v9, "account_type"

    iget-object v10, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1585
    .local v4, "rawContactUri":Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sync2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v4, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1591
    .end local v4    # "rawContactUri":Landroid/net/Uri;
    :cond_2
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1593
    .local v3, "query":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1594
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v8, "account_name"

    iget-object v9, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1595
    const-string/jumbo v8, "account_type"

    iget-object v9, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1596
    const-string/jumbo v8, "sync1"

    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1597
    const-string/jumbo v8, "sync2"

    iget v9, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1598
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1601
    const-string/jumbo v8, "raw_contact_id"

    invoke-virtual {v0, v8, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1602
    const-string/jumbo v8, "mimetype"

    const-string/jumbo v9, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1603
    const-string/jumbo v8, "data2"

    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1604
    const-string/jumbo v8, "data3"

    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1605
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1615
    const-string/jumbo v8, "raw_contact_id"

    invoke-virtual {v0, v8, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1616
    const-string/jumbo v8, "mimetype"

    const-string/jumbo v9, "vnd.android.cursor.item/vnd.org.telegram.multi.android.profile"

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1617
    const-string/jumbo v8, "data1"

    iget v9, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1618
    const-string/jumbo v8, "data2"

    const-string/jumbo v9, "Telegram Profile"

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1619
    const-string/jumbo v8, "data3"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "+"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1620
    const-string/jumbo v8, "data4"

    iget v9, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1621
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    :try_start_2
    const-string/jumbo v8, "com.android.contacts"

    invoke-virtual {v1, v8, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 1624
    .local v5, "result":[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_3

    array-length v8, v5

    if-lez v8, :cond_3

    const/4 v8, 0x0

    aget-object v8, v5, v8

    iget-object v8, v8, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v8, :cond_3

    .line 1625
    const/4 v8, 0x0

    aget-object v8, v5, v8

    iget-object v8, v8, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v6

    .line 1630
    .end local v5    # "result":[Landroid/content/ContentProviderResult;
    :cond_3
    :goto_2
    iget-object v9, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1631
    const/4 v8, 0x0

    :try_start_3
    iput-boolean v8, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 1632
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 1580
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "query":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_1
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 1586
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v2

    .line 1587
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1627
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v3    # "query":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_1
    move-exception v2

    .line 1628
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public checkAppAccount()V
    .locals 9

    .prologue
    .line 218
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 221
    .local v3, "am":Landroid/accounts/AccountManager;
    :try_start_0
    const-string/jumbo v6, "org.telegram.account"

    invoke-virtual {v3, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 222
    .local v2, "accounts":[Landroid/accounts/Account;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-lez v6, :cond_0

    .line 223
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_0

    .line 224
    aget-object v6, v2, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "a":I
    .end local v2    # "accounts":[Landroid/accounts/Account;
    :catch_0
    move-exception v4

    .line 228
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 230
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v6, "org.telegram.multi"

    invoke-virtual {v3, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 231
    .restart local v2    # "accounts":[Landroid/accounts/Account;
    const/4 v5, 0x0

    .line 232
    .local v5, "recreateAccount":Z
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 233
    array-length v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 234
    const/4 v6, 0x0

    aget-object v1, v2, v6

    .line 235
    .local v1, "acc":Landroid/accounts/Account;
    iget-object v6, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 236
    const/4 v5, 0x1

    .line 243
    .end local v1    # "acc":Landroid/accounts/Account;
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->readContacts()V

    .line 249
    :cond_1
    :goto_2
    if-eqz v5, :cond_6

    .line 251
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    :try_start_1
    array-length v6, v2

    if-ge v0, v6, :cond_5

    .line 252
    aget-object v6, v2, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 238
    .end local v0    # "a":I
    .restart local v1    # "acc":Landroid/accounts/Account;
    :cond_2
    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    goto :goto_1

    .line 241
    .end local v1    # "acc":Landroid/accounts/Account;
    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    .line 245
    :cond_4
    array-length v6, v2

    if-lez v6, :cond_1

    .line 246
    const/4 v5, 0x1

    goto :goto_2

    .line 254
    .restart local v0    # "a":I
    :catch_1
    move-exception v4

    .line 255
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 257
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 259
    :try_start_2
    new-instance v6, Landroid/accounts/Account;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "org.telegram.multi"

    invoke-direct {v6, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    .line 260
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->currentAccount:Landroid/accounts/Account;

    const-string/jumbo v7, ""

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 266
    .end local v0    # "a":I
    :cond_6
    :goto_4
    return-void

    .line 261
    .restart local v0    # "a":I
    :catch_2
    move-exception v4

    .line 262
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public checkContacts()V
    .locals 2

    .prologue
    .line 281
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$3;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public checkInviteText()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 182
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mainconfig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 183
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "invitetext"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/ContactsController;->inviteText:Ljava/lang/String;

    .line 184
    const-string/jumbo v3, "invitetexttime"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 185
    .local v2, "time":I
    iget-boolean v3, p0, Lorg/telegram/messenger/ContactsController;->updatingInviteText:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->inviteText:Ljava/lang/String;

    if-eqz v3, :cond_0

    const v3, 0x15180

    add-int/2addr v3, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    if-ge v3, v4, :cond_1

    .line 186
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/ContactsController;->updatingInviteText:Z

    .line 187
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_help_getInviteText;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_help_getInviteText;-><init>()V

    .line 188
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_help_getInviteText;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/ContactsController$2;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/ContactsController$2;-><init>(Lorg/telegram/messenger/ContactsController;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 210
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_help_getInviteText;
    :cond_1
    return-void
.end method

.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 151
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 152
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 155
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 156
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 157
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 162
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 163
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    .line 164
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 165
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    .line 166
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    .line 167
    iput v1, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    .line 168
    iput v1, p0, Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I

    .line 169
    iput v1, p0, Lorg/telegram/messenger/ContactsController;->loadingLastSeenInfo:I

    .line 170
    iput v1, p0, Lorg/telegram/messenger/ContactsController;->loadingGroupInfo:I

    .line 171
    iput v1, p0, Lorg/telegram/messenger/ContactsController;->loadingCallsInfo:I

    .line 172
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$1;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->privacyRules:Ljava/util/ArrayList;

    .line 179
    return-void
.end method

.method public deleteAllAppAccounts()V
    .locals 7

    .prologue
    .line 270
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 271
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string/jumbo v4, "org.telegram.multi"

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 272
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 273
    aget-object v4, v1, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "a":I
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "am":Landroid/accounts/AccountManager;
    :catch_0
    move-exception v3

    .line 276
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public deleteContact(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1755
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1821
    :cond_0
    :goto_0
    return-void

    .line 1758
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;-><init>()V

    .line 1759
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1760
    .local v2, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 1761
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    .line 1762
    .local v0, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz v0, :cond_2

    .line 1765
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1766
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;->id:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1768
    .end local v0    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/ContactsController$18;

    invoke-direct {v5, p0, v2, p1}, Lorg/telegram/messenger/ContactsController$18;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v1, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public forceImportContacts()V
    .locals 2

    .prologue
    .line 293
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$4;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method public getContactsCopy(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, "original":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 534
    .local v3, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 535
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    new-instance v0, Lorg/telegram/messenger/ContactsController$Contact;

    invoke-direct {v0}, Lorg/telegram/messenger/ContactsController$Contact;-><init>()V

    .line 536
    .local v0, "copyContact":Lorg/telegram/messenger/ContactsController$Contact;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    .line 537
    .local v2, "originalContact":Lorg/telegram/messenger/ContactsController$Contact;
    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    iget-object v6, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 538
    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    iget-object v6, v2, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 539
    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    iget-object v6, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 540
    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object v6, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 541
    iget-object v5, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iput-object v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 542
    iget-object v5, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    iput-object v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 543
    iget v5, v2, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    iput v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    .line 544
    iget v5, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 546
    .end local v0    # "copyContact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v2    # "originalContact":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_0
    return-object v3
.end method

.method public getDeleteAccountTTL()I
    .locals 1

    .prologue
    .line 1976
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I

    return v0
.end method

.method public getInviteText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->inviteText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->inviteText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "InviteText"

    const v1, 0x7f070282

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLoadingCallsInfo()Z
    .locals 2

    .prologue
    .line 1988
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->loadingCallsInfo:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoadingDeleteInfo()Z
    .locals 2

    .prologue
    .line 1980
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoadingGroupInfo()Z
    .locals 2

    .prologue
    .line 1992
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->loadingGroupInfo:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoadingLastSeenInfo()Z
    .locals 2

    .prologue
    .line 1984
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->loadingLastSeenInfo:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrivacyRules(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1996
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1997
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    .line 2001
    :goto_0
    return-object v0

    .line 1998
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1999
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2001
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->privacyRules:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public isLoadingContacts()Z
    .locals 2

    .prologue
    .line 921
    sget-object v1, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v1

    .line 922
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    monitor-exit v1

    return v0

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadContacts(ZZ)V
    .locals 3
    .param p1, "fromCache"    # Z
    .param p2, "cacheEmpty"    # Z

    .prologue
    .line 927
    sget-object v2, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v2

    .line 928
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 929
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    if-eqz p1, :cond_0

    .line 931
    const-string/jumbo v1, "load contacts from cache"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 932
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getContacts()V

    .line 965
    :goto_0
    return-void

    .line 929
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 934
    :cond_0
    const-string/jumbo v1, "load contacts from server"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 935
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getContacts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getContacts;-><init>()V

    .line 936
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_getContacts;
    if-eqz p2, :cond_1

    const-string/jumbo v1, ""

    :goto_1
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getContacts;->hash:Ljava/lang/String;

    .line 937
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ContactsController$7;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ContactsController$7;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 936
    :cond_1
    sget-object v1, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    goto :goto_1
.end method

.method public loadPrivacySettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1874
    iget v1, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    if-nez v1, :cond_0

    .line 1875
    iput v3, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    .line 1876
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getAccountTTL;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getAccountTTL;-><init>()V

    .line 1877
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_getAccountTTL;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ContactsController$20;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ContactsController$20;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1896
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_getAccountTTL;
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/ContactsController;->loadingLastSeenInfo:I

    if-nez v1, :cond_1

    .line 1897
    iput v3, p0, Lorg/telegram/messenger/ContactsController;->loadingLastSeenInfo:I

    .line 1898
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;-><init>()V

    .line 1899
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    .line 1900
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ContactsController$21;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ContactsController$21;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1920
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/ContactsController;->loadingCallsInfo:I

    if-nez v1, :cond_2

    .line 1921
    iput v3, p0, Lorg/telegram/messenger/ContactsController;->loadingCallsInfo:I

    .line 1922
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;-><init>()V

    .line 1923
    .restart local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    .line 1924
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ContactsController$22;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ContactsController$22;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1944
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;
    :cond_2
    iget v1, p0, Lorg/telegram/messenger/ContactsController;->loadingGroupInfo:I

    if-nez v1, :cond_3

    .line 1945
    iput v3, p0, Lorg/telegram/messenger/ContactsController;->loadingGroupInfo:I

    .line 1946
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;-><init>()V

    .line 1947
    .restart local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    .line 1948
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ContactsController$23;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ContactsController$23;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1968
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1969
    return-void
.end method

.method protected markAsContacted(Ljava/lang/String;)V
    .locals 2
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 1656
    if-nez p1, :cond_0

    .line 1669
    :goto_0
    return-void

    .line 1659
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$16;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ContactsController$16;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected performSyncPhoneBook(Ljava/util/HashMap;ZZZZ)V
    .locals 8
    .param p2, "request"    # Z
    .param p3, "first"    # Z
    .param p4, "schedule"    # Z
    .param p5, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;ZZZZ)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    if-nez p3, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-nez v0, :cond_0

    .line 918
    :goto_0
    return-void

    .line 553
    :cond_0
    sget-object v7, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/ContactsController$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p2

    move v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/ContactsController$6;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZZ)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public processContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "userDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v8, -0x1

    .line 1533
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1534
    .local v3, "newContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    .local v1, "contactsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1536
    .local v4, "uid":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    .line 1537
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 1538
    .local v0, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    .line 1539
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1541
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1542
    .local v2, "idx":I
    if-eq v2, v8, :cond_0

    .line 1543
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1546
    .end local v0    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v2    # "idx":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_0

    .line 1547
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1548
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1549
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1550
    .restart local v2    # "idx":I
    if-eq v2, v8, :cond_0

    .line 1551
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1556
    .end local v2    # "idx":I
    .end local v4    # "uid":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1557
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/MessagesStorage;->deleteContacts(Ljava/util/ArrayList;)V

    .line 1559
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1560
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V

    .line 1562
    :cond_4
    iget-boolean v5, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-nez v5, :cond_6

    .line 1563
    :cond_5
    iget-object v5, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1564
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delay update - contacts add = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " delete = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1568
    :goto_1
    return-void

    .line 1566
    :cond_6
    invoke-direct {p0, p1, p2, v3, v1}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public processLoadedContacts(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 1
    .param p3, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 969
    .local p1, "contactsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .local p2, "usersArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v0, Lorg/telegram/messenger/ContactsController$8;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/messenger/ContactsController$8;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1195
    return-void
.end method

.method public readContacts()V
    .locals 2

    .prologue
    .line 337
    sget-object v1, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    if-eqz v0, :cond_0

    .line 339
    monitor-exit v1

    .line 356
    :goto_0
    return-void

    .line 341
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 342
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$5;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public reloadContactsStatuses()V
    .locals 6

    .prologue
    .line 1824
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->saveContactsLoadTime()V

    .line 1825
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->clearFullUsers()V

    .line 1826
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mainconfig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1827
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1828
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "needGetStatuses"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1829
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_getStatuses;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getStatuses;-><init>()V

    .line 1830
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_getStatuses;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/ContactsController$19;

    invoke-direct {v4, p0, v0}, Lorg/telegram/messenger/ContactsController$19;-><init>(Lorg/telegram/messenger/ContactsController;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1871
    return-void
.end method

.method public setDeleteAccountTTL(I)V
    .locals 0
    .param p1, "ttl"    # I

    .prologue
    .line 1972
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I

    .line 1973
    return-void
.end method

.method public setPrivacyRules(Ljava/util/ArrayList;I)V
    .locals 3
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2006
    .local p1, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PrivacyRule;>;"
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 2007
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    .line 2013
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2014
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatuses()V

    .line 2015
    return-void

    .line 2008
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2009
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2011
    :cond_1
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->privacyRules:Ljava/util/ArrayList;

    goto :goto_0
.end method
