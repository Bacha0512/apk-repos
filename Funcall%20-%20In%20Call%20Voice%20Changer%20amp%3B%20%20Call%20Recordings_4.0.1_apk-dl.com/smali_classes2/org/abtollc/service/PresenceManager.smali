.class public Lorg/abtollc/service/PresenceManager;
.super Ljava/lang/Object;
.source "PresenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/service/PresenceManager$AccountStatusContentObserver;
    }
.end annotation


# static fields
.field private static final ACC_PROJECTION:[Ljava/lang/String;

.field private static final THIS_FILE:Ljava/lang/String; = "PresenceManager"


# instance fields
.field private addedAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/abtollc/api/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private service:Lorg/abtollc/service/ABTOSipService;

.field private statusObserver:Lorg/abtollc/service/PresenceManager$AccountStatusContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wizard"

    aput-object v2, v0, v1

    sput-object v0, Lorg/abtollc/service/PresenceManager;->ACC_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/abtollc/service/PresenceManager;->mHandler:Landroid/os/Handler;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/abtollc/service/PresenceManager;->addedAccounts:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/abtollc/service/PresenceManager;)Lorg/abtollc/service/ABTOSipService;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/service/PresenceManager;

    .prologue
    .line 17
    iget-object v0, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;

    return-object v0
.end method

.method static synthetic access$100(Lorg/abtollc/service/PresenceManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/service/PresenceManager;

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/abtollc/service/PresenceManager;->updateRegistrations()V

    return-void
.end method

.method private declared-synchronized addBuddiesForAccount(Lorg/abtollc/api/SipProfile;)V
    .locals 3
    .param p1, "acc"    # Lorg/abtollc/api/SipProfile;

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/abtollc/service/PresenceManager;->getBuddiesForAccount(Lorg/abtollc/api/SipProfile;)Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "toAdd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v1

    new-instance v2, Lorg/abtollc/service/PresenceManager$1;

    invoke-direct {v2, p0, v0}, Lorg/abtollc/service/PresenceManager$1;-><init>(Lorg/abtollc/service/PresenceManager;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 87
    :cond_0
    iget-object v1, p0, Lorg/abtollc/service/PresenceManager;->addedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 73
    .end local v0    # "toAdd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized deleteBuddiesForAccount(Lorg/abtollc/api/SipProfile;)V
    .locals 10
    .param p1, "acc"    # Lorg/abtollc/api/SipProfile;

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/abtollc/service/PresenceManager;->getBuddiesForAccount(Lorg/abtollc/api/SipProfile;)Ljava/util/List;

    move-result-object v2

    .line 100
    .local v2, "toDel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;

    if-eqz v5, :cond_1

    .line 101
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 102
    .local v4, "uri":Ljava/lang/String;
    invoke-static {}, Lorg/abtollc/utils/contacts/ContactsWrapper;->getInstance()Lorg/abtollc/utils/contacts/ContactsWrapper;

    move-result-object v6

    iget-object v7, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;

    sget-object v8, Lorg/abtollc/api/SipManager$PresenceStatus;->UNKNOWN:Lorg/abtollc/api/SipManager$PresenceStatus;

    const-string v9, ""

    invoke-virtual {v6, v7, v4, v8, v9}, Lorg/abtollc/utils/contacts/ContactsWrapper;->updatePresence(Landroid/content/Context;Ljava/lang/String;Lorg/abtollc/api/SipManager$PresenceStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    .end local v2    # "toDel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "uri":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 105
    .restart local v2    # "toDel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    iget-object v5, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v5}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v5

    new-instance v6, Lorg/abtollc/service/PresenceManager$2;

    invoke-direct {v6, p0, v2}, Lorg/abtollc/service/PresenceManager$2;-><init>(Lorg/abtollc/service/PresenceManager;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 118
    :cond_1
    const/4 v3, -0x1

    .line 119
    .local v3, "toRemoveIndex":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    iget-object v5, p0, Lorg/abtollc/service/PresenceManager;->addedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 120
    iget-object v5, p0, Lorg/abtollc/service/PresenceManager;->addedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/api/SipProfile;

    .line 121
    .local v0, "existingAcc":Lorg/abtollc/api/SipProfile;
    iget-wide v6, v0, Lorg/abtollc/api/SipProfile;->id:J

    iget-wide v8, p1, Lorg/abtollc/api/SipProfile;->id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 122
    move v3, v1

    .line 127
    .end local v0    # "existingAcc":Lorg/abtollc/api/SipProfile;
    :cond_2
    if-ltz v3, :cond_3

    .line 128
    iget-object v5, p0, Lorg/abtollc/service/PresenceManager;->addedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :cond_3
    monitor-exit p0

    return-void

    .line 119
    .restart local v0    # "existingAcc":Lorg/abtollc/api/SipProfile;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private declared-synchronized getBuddiesForAccount(Lorg/abtollc/api/SipProfile;)Ljava/util/List;
    .locals 3
    .param p1, "acc"    # Lorg/abtollc/api/SipProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/abtollc/api/SipProfile;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lorg/abtollc/utils/contacts/ContactsWrapper;->getInstance()Lorg/abtollc/utils/contacts/ContactsWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;

    iget-object v2, p1, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/contacts/ContactsWrapper;->getPhonesByGroup(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 62
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateRegistrations()V
    .locals 14

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    monitor-exit p0

    return-void

    .line 143
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/abtollc/service/PresenceManager;->ACC_PROJECTION:[Ljava/lang/String;

    const-string v3, "active=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v13, "1"

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 148
    .local v11, "c":Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v7, "accToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/abtollc/api/SipProfile;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v8, "accToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/abtollc/api/SipProfile;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v10, "alreadyAddedAcc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lorg/abtollc/service/PresenceManager;->addedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/abtollc/api/SipProfile;

    .line 152
    .local v9, "addedAcc":Lorg/abtollc/api/SipProfile;
    iget-wide v2, v9, Lorg/abtollc/api/SipProfile;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    .end local v7    # "accToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/abtollc/api/SipProfile;>;"
    .end local v8    # "accToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/abtollc/api/SipProfile;>;"
    .end local v9    # "addedAcc":Lorg/abtollc/api/SipProfile;
    .end local v10    # "alreadyAddedAcc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v11    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 155
    .restart local v7    # "accToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/abtollc/api/SipProfile;>;"
    .restart local v8    # "accToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/abtollc/api/SipProfile;>;"
    .restart local v10    # "alreadyAddedAcc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v11    # "c":Landroid/database/Cursor;
    :cond_2
    if-eqz v11, :cond_6

    .line 157
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    :cond_3
    new-instance v6, Lorg/abtollc/api/SipProfile;

    invoke-direct {v6, v11}, Lorg/abtollc/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 167
    .local v6, "acc":Lorg/abtollc/api/SipProfile;
    iget-wide v0, v6, Lorg/abtollc/api/SipProfile;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 176
    .end local v6    # "acc":Lorg/abtollc/api/SipProfile;
    :cond_5
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_6
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/abtollc/api/SipProfile;

    .line 181
    .restart local v6    # "acc":Lorg/abtollc/api/SipProfile;
    invoke-direct {p0, v6}, Lorg/abtollc/service/PresenceManager;->deleteBuddiesForAccount(Lorg/abtollc/api/SipProfile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 173
    .end local v6    # "acc":Lorg/abtollc/api/SipProfile;
    :catch_0
    move-exception v12

    .line 174
    .local v12, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "PresenceManager"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v12}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 176
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .line 184
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/abtollc/api/SipProfile;

    .line 185
    .restart local v6    # "acc":Lorg/abtollc/api/SipProfile;
    invoke-direct {p0, v6}, Lorg/abtollc/service/PresenceManager;->addBuddiesForAccount(Lorg/abtollc/api/SipProfile;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public changeBuddyState(Ljava/lang/String;ILorg/abtollc/api/SipManager$PresenceStatus;Ljava/lang/String;)V
    .locals 4
    .param p1, "buddyUri"    # Ljava/lang/String;
    .param p2, "monitorPres"    # I
    .param p3, "presStatus"    # Lorg/abtollc/api/SipManager$PresenceStatus;
    .param p4, "statusText"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lorg/abtollc/utils/contacts/ContactsWrapper;->getInstance()Lorg/abtollc/utils/contacts/ContactsWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "sip:"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3, p4}, Lorg/abtollc/utils/contacts/ContactsWrapper;->updatePresence(Landroid/content/Context;Ljava/lang/String;Lorg/abtollc/api/SipManager$PresenceStatus;Ljava/lang/String;)V

    .line 216
    :cond_0
    return-void
.end method

.method public declared-synchronized startMonitoring(Lorg/abtollc/service/ABTOSipService;)V
    .locals 4
    .param p1, "srv"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;

    .line 37
    new-instance v0, Lorg/abtollc/service/PresenceManager$AccountStatusContentObserver;

    iget-object v1, p0, Lorg/abtollc/service/PresenceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lorg/abtollc/service/PresenceManager$AccountStatusContentObserver;-><init>(Lorg/abtollc/service/PresenceManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/abtollc/service/PresenceManager;->statusObserver:Lorg/abtollc/service/PresenceManager$AccountStatusContentObserver;

    .line 38
    iget-object v0, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/abtollc/service/PresenceManager;->statusObserver:Lorg/abtollc/service/PresenceManager$AccountStatusContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopMonitoring()V
    .locals 2

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/abtollc/service/PresenceManager;->statusObserver:Lorg/abtollc/service/PresenceManager$AccountStatusContentObserver;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/abtollc/service/PresenceManager;->statusObserver:Lorg/abtollc/service/PresenceManager$AccountStatusContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/abtollc/service/PresenceManager;->statusObserver:Lorg/abtollc/service/PresenceManager$AccountStatusContentObserver;

    .line 47
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
