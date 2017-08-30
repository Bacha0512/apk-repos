.class public Lcom/weirdvoice/widgets/AccountChooserButton;
.super Landroid/widget/LinearLayout;
.source "AccountChooserButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/widgets/AccountChooserButton$AccountStatusContentObserver;,
        Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;,
        Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountMenuItemListener;,
        Lcom/weirdvoice/widgets/AccountChooserButton$OnPluginLoadListener;,
        Lcom/weirdvoice/widgets/AccountChooserButton$PluginButtonManager;
    }
.end annotation


# static fields
.field private static final ACC_PROJECTION:[Ljava/lang/String;

.field protected static final THIS_FILE:Ljava/lang/String; = "AccountChooserButton"


# instance fields
.field private account:Lcom/weirdvoice/api/SipProfile;

.field private canChangeIfValid:Z

.field private final imageView:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mPopupMenu:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

.field private onAccountChange:Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;

.field private showExternals:Z

.field private statusObserver:Lcom/weirdvoice/widgets/AccountChooserButton$AccountStatusContentObserver;

.field private targetAccountId:Ljava/lang/Long;

.field private final telCmp:Landroid/content/ComponentName;

.field private final textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 65
    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 66
    const-string v2, "acc_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 67
    const-string v2, "reg_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 68
    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 69
    const-string v2, "default_uri_scheme"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 70
    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 71
    const-string v2, "wizard"

    aput-object v2, v0, v1

    .line 64
    sput-object v0, Lcom/weirdvoice/widgets/AccountChooserButton;->ACC_PROJECTION:[Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/weirdvoice/widgets/AccountChooserButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput-object v5, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->account:Lcom/weirdvoice/api/SipProfile;

    .line 77
    iput-object v5, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->targetAccountId:Ljava/lang/Long;

    .line 79
    iput-boolean v4, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->showExternals:Z

    .line 83
    iput-object v5, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->onAccountChange:Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;

    .line 132
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->mHandler:Landroid/os/Handler;

    .line 133
    iput-object v5, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->statusObserver:Lcom/weirdvoice/widgets/AccountChooserButton$AccountStatusContentObserver;

    .line 134
    iput-boolean v4, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->canChangeIfValid:Z

    .line 138
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->mListeners:Ljava/util/Set;

    .line 106
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/weirdvoice/plugins/telephony/CallHandler;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->telCmp:Landroid/content/ComponentName;

    .line 109
    invoke-virtual {p0, v4}, Lcom/weirdvoice/widgets/AccountChooserButton;->setClickable(Z)V

    .line 110
    invoke-virtual {p0, v4}, Lcom/weirdvoice/widgets/AccountChooserButton;->setFocusable(Z)V

    .line 111
    const v1, 0x7f020028

    invoke-virtual {p0, v1}, Lcom/weirdvoice/widgets/AccountChooserButton;->setBackgroundResource(I)V

    .line 112
    invoke-virtual {p0, v4}, Lcom/weirdvoice/widgets/AccountChooserButton;->setOrientation(I)V

    .line 113
    invoke-virtual {p0, v7, v6, v7, v6}, Lcom/weirdvoice/widgets/AccountChooserButton;->setPadding(IIII)V

    .line 114
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/weirdvoice/widgets/AccountChooserButton;->setGravity(I)V

    .line 116
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 117
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030014

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 118
    invoke-virtual {p0, p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v1, 0x7f0b0038

    invoke-virtual {p0, v1}, Lcom/weirdvoice/widgets/AccountChooserButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->textView:Landroid/widget/TextView;

    .line 120
    const v1, 0x7f0b0037

    invoke-virtual {p0, v1}, Lcom/weirdvoice/widgets/AccountChooserButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->imageView:Landroid/widget/ImageView;

    .line 122
    new-instance v1, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->mMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 125
    invoke-virtual {p0, v5}, Lcom/weirdvoice/widgets/AccountChooserButton;->setAccount(Lcom/weirdvoice/api/SipProfile;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/widgets/AccountChooserButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/widgets/AccountChooserButton;)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->updateRegistration()V

    return-void
.end method

.method static synthetic access$1(Lcom/weirdvoice/widgets/AccountChooserButton;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/weirdvoice/widgets/AccountChooserButton;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->mMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private updateRegistration()V
    .locals 13

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/weirdvoice/widgets/AccountChooserButton;->ACC_PROJECTION:[Ljava/lang/String;

    const-string v3, "active=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 329
    const-string v12, "1"

    aput-object v12, v4, v5

    .line 330
    const/4 v5, 0x0

    .line 328
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 332
    .local v8, "c":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 333
    .local v11, "toSelectAcc":Lcom/weirdvoice/api/SipProfile;
    const/4 v10, 0x0

    .line 335
    .local v10, "firstAvail":Lcom/weirdvoice/api/SipProfile;
    if-eqz v8, :cond_3

    .line 337
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    :cond_0
    new-instance v6, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v6, v8}, Lcom/weirdvoice/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 342
    .local v6, "acc":Lcom/weirdvoice/api/SipProfile;
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, v6, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v0, v2, v3}, Lcom/weirdvoice/utils/AccountListUtils;->getAccountDisplay(Landroid/content/Context;J)Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;

    move-result-object v7

    .line 343
    .local v7, "accountStatusDisplay":Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;
    iget-boolean v0, v7, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->availableForCalls:Z

    if-eqz v0, :cond_7

    .line 344
    if-nez v10, :cond_1

    .line 345
    move-object v10, v6

    .line 348
    :cond_1
    iget-boolean v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->canChangeIfValid:Z

    if-eqz v0, :cond_6

    .line 351
    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->targetAccountId:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 353
    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->targetAccountId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, v6, Lcom/weirdvoice/api/SipProfile;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 354
    move-object v11, v6

    .line 373
    .end local v6    # "acc":Lcom/weirdvoice/api/SipProfile;
    .end local v7    # "accountStatusDisplay":Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;
    :cond_2
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_3
    :goto_1
    if-nez v11, :cond_4

    .line 379
    move-object v11, v10

    .line 383
    :cond_4
    invoke-virtual {p0, v11}, Lcom/weirdvoice/widgets/AccountChooserButton;->setAccount(Lcom/weirdvoice/api/SipProfile;)V

    .line 384
    return-void

    .line 359
    .restart local v6    # "acc":Lcom/weirdvoice/api/SipProfile;
    .restart local v7    # "accountStatusDisplay":Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;
    :cond_5
    move-object v11, v6

    .line 360
    goto :goto_0

    .line 362
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->account:Lcom/weirdvoice/api/SipProfile;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->account:Lcom/weirdvoice/api/SipProfile;

    iget-wide v0, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    iget-wide v2, v6, Lcom/weirdvoice/api/SipProfile;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 364
    move-object v11, v6

    .line 365
    goto :goto_0

    .line 368
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 370
    .end local v6    # "acc":Lcom/weirdvoice/api/SipProfile;
    .end local v7    # "accountStatusDisplay":Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;
    :catch_0
    move-exception v9

    .line 371
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "AccountChooserButton"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v9}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 372
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 373
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 374
    throw v0
.end method


# virtual methods
.method public addExtraMenuItem(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 4
    .param p1, "titleRes"    # I

    .prologue
    .line 474
    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->mMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v1, 0x7f0b0007

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addOnAttachStateChangeListener(Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    return-void
.end method

.method public getSelectedAccount()Lcom/weirdvoice/api/SipProfile;
    .locals 6

    .prologue
    .line 391
    iget-object v4, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->account:Lcom/weirdvoice/api/SipProfile;

    if-nez v4, :cond_7

    .line 392
    new-instance v3, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v3}, Lcom/weirdvoice/api/SipProfile;-><init>()V

    .line 393
    .local v3, "retAcc":Lcom/weirdvoice/api/SipProfile;
    iget-boolean v4, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->showExternals:Z

    if-eqz v4, :cond_3

    .line 394
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getAvailableCallHandlers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 395
    .local v1, "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/weirdvoice/utils/Compatibility;->canMakeGSMCall(Landroid/content/Context;)Z

    move-result v2

    .line 397
    .local v2, "includeGsm":Z
    if-eqz v2, :cond_1

    .line 398
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 408
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 418
    .end local v1    # "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "includeGsm":Z
    :cond_3
    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 421
    .end local v3    # "retAcc":Lcom/weirdvoice/api/SipProfile;
    :goto_0
    return-object v3

    .line 398
    .restart local v1    # "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "includeGsm":Z
    .restart local v3    # "retAcc":Lcom/weirdvoice/api/SipProfile;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    .local v0, "callHandler":Ljava/lang/String;
    iget-object v5, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->telCmp:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/weirdvoice/api/SipProfile;->id:J

    goto :goto_0

    .line 408
    .end local v0    # "callHandler":Ljava/lang/String;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 410
    .restart local v0    # "callHandler":Ljava/lang/String;
    iget-object v5, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->telCmp:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v2, :cond_2

    .line 413
    :cond_6
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/weirdvoice/api/SipProfile;->id:J

    goto :goto_0

    .line 421
    .end local v0    # "callHandler":Ljava/lang/String;
    .end local v1    # "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "includeGsm":Z
    .end local v3    # "retAcc":Lcom/weirdvoice/api/SipProfile;
    :cond_7
    iget-object v3, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->account:Lcom/weirdvoice/api/SipProfile;

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 177
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 178
    iget-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->statusObserver:Lcom/weirdvoice/widgets/AccountChooserButton$AccountStatusContentObserver;

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Lcom/weirdvoice/widgets/AccountChooserButton$AccountStatusContentObserver;

    iget-object v2, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/weirdvoice/widgets/AccountChooserButton$AccountStatusContentObserver;-><init>(Lcom/weirdvoice/widgets/AccountChooserButton;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->statusObserver:Lcom/weirdvoice/widgets/AccountChooserButton$AccountStatusContentObserver;

    .line 180
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    .line 181
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->statusObserver:Lcom/weirdvoice/widgets/AccountChooserButton$AccountStatusContentObserver;

    .line 180
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->updateRegistration()V

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    return-void

    .line 187
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;

    .line 188
    .local v0, "listener":Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;
    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    const-string v2, "AccountChooserButton"

    const-string v3, "Click the account chooser button"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/widgets/AccountChooserButton;->mPopupMenu:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    if-nez v2, :cond_0

    .line 210
    new-instance v2, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/widgets/AccountChooserButton;->mMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/weirdvoice/widgets/AccountChooserButton;->mPopupMenu:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/widgets/AccountChooserButton;->mPopupMenu:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 213
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/widgets/AccountChooserButton;->mMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v3, 0x7f0b0006

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/weirdvoice/widgets/AccountChooserButton;->ACC_PROJECTION:[Ljava/lang/String;

    const-string v5, "active=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 216
    const-string v19, "1"

    aput-object v19, v6, v7

    .line 217
    const/4 v7, 0x0

    .line 215
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 219
    .local v10, "c":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 220
    .local v15, "hasSomeSip":Z
    if-eqz v10, :cond_4

    .line 222
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    :cond_1
    new-instance v8, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v8, v10}, Lcom/weirdvoice/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 226
    .local v8, "account":Lcom/weirdvoice/api/SipProfile;
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v4, v8, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v2, v4, v5}, Lcom/weirdvoice/utils/AccountListUtils;->getAccountDisplay(Landroid/content/Context;J)Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;

    move-result-object v9

    .line 227
    .local v9, "accountStatusDisplay":Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;
    iget-boolean v2, v9, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->availableForCalls:Z

    if-eqz v2, :cond_2

    .line 228
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/weirdvoice/wizards/WizardUtils;->getWizardBitmap(Landroid/content/Context;Lcom/weirdvoice/api/SipProfile;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 228
    invoke-direct {v13, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 231
    .local v13, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/widgets/AccountChooserButton;->mMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v3, 0x7f0b0006

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v8, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v17

    .line 232
    .local v17, "item":Lcom/actionbarsherlock/view/MenuItem;
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/MenuItem;

    .line 233
    new-instance v2, Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountMenuItemListener;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8}, Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountMenuItemListener;-><init>(Lcom/weirdvoice/widgets/AccountChooserButton;Lcom/weirdvoice/api/SipProfile;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 235
    const/4 v15, 0x1

    .line 237
    .end local v13    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v17    # "item":Lcom/actionbarsherlock/view/MenuItem;
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 242
    .end local v8    # "account":Lcom/weirdvoice/api/SipProfile;
    .end local v9    # "accountStatusDisplay":Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_4
    :goto_0
    if-nez v15, :cond_5

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/widgets/AccountChooserButton;->mMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v3, 0x7f0b0006

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0c000a

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v17

    .line 247
    .restart local v17    # "item":Lcom/actionbarsherlock/view/MenuItem;
    const v2, 0x1080027

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 250
    .end local v17    # "item":Lcom/actionbarsherlock/view/MenuItem;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/weirdvoice/widgets/AccountChooserButton;->showExternals:Z

    if-eqz v2, :cond_7

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getAvailableCallHandlers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v11

    .line 253
    .local v11, "callHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/weirdvoice/utils/Compatibility;->canMakeGSMCall(Landroid/content/Context;)Z

    move-result v16

    .line 254
    .local v16, "includeGsm":Z
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    .line 266
    .end local v11    # "callHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "includeGsm":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/widgets/AccountChooserButton;->mPopupMenu:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->show()V

    .line 267
    return-void

    .line 239
    :catch_0
    move-exception v14

    .line 240
    .local v14, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "AccountChooserButton"

    const-string v3, "Error on looping over sip profiles"

    invoke-static {v2, v3, v14}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 241
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 242
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 243
    throw v2

    .line 254
    .restart local v11    # "callHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "includeGsm":Z
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 255
    .local v18, "packageName":Ljava/lang/String;
    const-string v3, "AccountChooserButton"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Compare "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/weirdvoice/widgets/AccountChooserButton;->telCmp:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    if-nez v16, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/weirdvoice/widgets/AccountChooserButton;->telCmp:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 261
    :cond_9
    new-instance v12, Lcom/weirdvoice/utils/CallHandlerPlugin;

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v12, v3}, Lcom/weirdvoice/utils/CallHandlerPlugin;-><init>(Landroid/content/Context;)V

    .line 262
    .local v12, "ch":Lcom/weirdvoice/utils/CallHandlerPlugin;
    const/4 v3, 0x0

    new-instance v4, Lcom/weirdvoice/widgets/AccountChooserButton$OnPluginLoadListener;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/weirdvoice/widgets/AccountChooserButton$OnPluginLoadListener;-><init>(Lcom/weirdvoice/widgets/AccountChooserButton;Lcom/weirdvoice/widgets/AccountChooserButton$OnPluginLoadListener;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v3, v4}, Lcom/weirdvoice/utils/CallHandlerPlugin;->loadFrom(Ljava/lang/String;Ljava/lang/String;Lcom/weirdvoice/utils/CallHandlerPlugin$OnLoadListener;)V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 194
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 195
    iget-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->statusObserver:Lcom/weirdvoice/widgets/AccountChooserButton$AccountStatusContentObserver;

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->statusObserver:Lcom/weirdvoice/widgets/AccountChooserButton$AccountStatusContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->statusObserver:Lcom/weirdvoice/widgets/AccountChooserButton$AccountStatusContentObserver;

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    return-void

    .line 200
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;

    .line 201
    .local v0, "listener":Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;
    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeOnAttachStateChangeListener(Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 455
    return-void
.end method

.method public setAccount(Lcom/weirdvoice/api/SipProfile;)V
    .locals 2
    .param p1, "aAccount"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    const/16 v1, 0x8

    .line 300
    iput-object p1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->account:Lcom/weirdvoice/api/SipProfile;

    .line 301
    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->onAccountChange:Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->onAccountChange:Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;

    iget-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->account:Lcom/weirdvoice/api/SipProfile;

    invoke-interface {v0, v1}, Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;->onChooseAccount(Lcom/weirdvoice/api/SipProfile;)V

    .line 321
    :cond_0
    return-void
.end method

.method public setChangeable(Z)V
    .locals 0
    .param p1, "changeable"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->canChangeIfValid:Z

    .line 163
    return-void
.end method

.method public setOnAccountChangeListener(Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;)V
    .locals 0
    .param p1, "anAccountChangeListener"    # Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->onAccountChange:Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;

    .line 430
    return-void
.end method

.method public setShowExternals(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->showExternals:Z

    .line 438
    return-void
.end method

.method public setTargetAccount(Ljava/lang/Long;)V
    .locals 0
    .param p1, "aTargetAccountId"    # Ljava/lang/Long;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/weirdvoice/widgets/AccountChooserButton;->targetAccountId:Ljava/lang/Long;

    .line 173
    return-void
.end method
