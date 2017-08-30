.class public Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;
.super Lorg/pjsip/pjsua/MobileRegHandlerCallback;
.source "RegHandlerCallback.java"


# static fields
.field private static final REG_EXPIRES_PREFIX:Ljava/lang/String; = "reg_expires_"

.field private static final REG_URI_PREFIX:Ljava/lang/String; = "reg_uri_"

.field private static final THIS_FILE:Ljava/lang/String; = "RegHandlerReceiver"


# instance fields
.field private EMPTY_STR:Lorg/pjsip/pjsua/pj_str_t;

.field private accountCleanRegisters:Landroid/util/SparseIntArray;

.field private mCtxt:Landroid/content/Context;

.field private prefs_db:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/pjsip/pjsua/MobileRegHandlerCallback;-><init>()V

    .line 43
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;->accountCleanRegisters:Landroid/util/SparseIntArray;

    .line 44
    const-string v0, ""

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;->EMPTY_STR:Lorg/pjsip/pjsua/pj_str_t;

    .line 48
    iput-object p1, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;->mCtxt:Landroid/content/Context;

    .line 49
    const-string v0, "reg_handler_db"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;->prefs_db:Landroid/content/SharedPreferences;

    .line 50
    return-void
.end method


# virtual methods
.method public on_restore_contact(I)Lorg/pjsip/pjsua/pj_str_t;
    .locals 12
    .param p1, "acc_id"    # I

    .prologue
    const/4 v10, 0x0

    .line 58
    iget-object v8, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;->accountCleanRegisters:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p1, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 59
    .local v0, "active":I
    if-nez v0, :cond_0

    .line 60
    iget-object v8, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;->EMPTY_STR:Lorg/pjsip/pjsua/pj_str_t;

    .line 72
    :goto_0
    return-object v8

    .line 62
    :cond_0
    iget-object v8, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;->mCtxt:Landroid/content/Context;

    invoke-static {v8, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getAccountIdForPjsipId(Landroid/content/Context;I)J

    move-result-wide v2

    .line 63
    .local v2, "db_acc_id":J
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "reg_expires_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "key_expires":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "reg_uri_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "key_uri":Ljava/lang/String;
    iget-object v8, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;->prefs_db:Landroid/content/SharedPreferences;

    invoke-interface {v8, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 66
    .local v1, "expires":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 67
    .local v6, "now":I
    if-lt v1, v6, :cond_1

    .line 68
    iget-object v8, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;->prefs_db:Landroid/content/SharedPreferences;

    const-string v9, ""

    invoke-interface {v8, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "ret":Ljava/lang/String;
    const-string v8, "RegHandlerReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "We restore "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v7}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v8

    goto :goto_0

    .line 72
    .end local v7    # "ret":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;->EMPTY_STR:Lorg/pjsip/pjsua/pj_str_t;

    goto :goto_0
.end method

.method public on_save_contact(ILorg/pjsip/pjsua/pj_str_t;I)V
    .locals 10
    .param p1, "acc_id"    # I
    .param p2, "contact"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "expires"    # I

    .prologue
    .line 77
    iget-object v6, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;->mCtxt:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getAccountIdForPjsipId(Landroid/content/Context;I)J

    move-result-wide v0

    .line 78
    .local v0, "db_acc_id":J
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "reg_expires_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "key_expires":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "reg_uri_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "key_uri":Ljava/lang/String;
    iget-object v6, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;->prefs_db:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 81
    .local v2, "edt":Landroid/content/SharedPreferences$Editor;
    invoke-static {p2}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 83
    .local v5, "now":I
    add-int v6, v5, p3

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    return-void
.end method

.method public set_account_cleaning_state(II)V
    .locals 1
    .param p1, "acc_id"    # I
    .param p2, "active"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/weirdvoice/pjsip/reghandler/RegHandlerCallback;->accountCleanRegisters:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    return-void
.end method
