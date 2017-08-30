.class public Lorg/abtollc/voip/reghandler/RegHandlerCallback;
.super Lorg/abtollc/jni/MobileRegHandlerCallback;
.source "RegHandlerCallback.java"


# static fields
.field private static final REG_EXPIRES_PREFIX:Ljava/lang/String; = "reg_expires_"

.field private static final REG_URI_PREFIX:Ljava/lang/String; = "reg_uri_"

.field private static final THIS_FILE:Ljava/lang/String; = "RegHandlerReceiver"


# instance fields
.field private EMPTY_STR:Lorg/abtollc/jni/pj_str_t;

.field private accountCleanRegisters:Landroid/util/SparseIntArray;

.field private prefs_db:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/abtollc/jni/MobileRegHandlerCallback;-><init>()V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/abtollc/voip/reghandler/RegHandlerCallback;->accountCleanRegisters:Landroid/util/SparseIntArray;

    .line 21
    const-string v0, ""

    invoke-static {v0}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/voip/reghandler/RegHandlerCallback;->EMPTY_STR:Lorg/abtollc/jni/pj_str_t;

    .line 24
    const-string v0, "reg_handler_db"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/voip/reghandler/RegHandlerCallback;->prefs_db:Landroid/content/SharedPreferences;

    .line 25
    return-void
.end method


# virtual methods
.method public on_restore_contact(I)Lorg/abtollc/jni/pj_str_t;
    .locals 8
    .param p1, "acc_id"    # I

    .prologue
    const/4 v7, 0x0

    .line 33
    iget-object v4, p0, Lorg/abtollc/voip/reghandler/RegHandlerCallback;->accountCleanRegisters:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 34
    .local v0, "active":I
    if-nez v0, :cond_0

    .line 35
    iget-object v4, p0, Lorg/abtollc/voip/reghandler/RegHandlerCallback;->EMPTY_STR:Lorg/abtollc/jni/pj_str_t;

    .line 44
    :goto_0
    return-object v4

    .line 37
    :cond_0
    iget-object v4, p0, Lorg/abtollc/voip/reghandler/RegHandlerCallback;->prefs_db:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reg_expires_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 38
    .local v1, "expires":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 39
    .local v2, "now":I
    if-lt v1, v2, :cond_1

    .line 40
    iget-object v4, p0, Lorg/abtollc/voip/reghandler/RegHandlerCallback;->prefs_db:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reg_uri_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "ret":Ljava/lang/String;
    const-string v4, "RegHandlerReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We restore "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {v3}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v4

    goto :goto_0

    .line 44
    .end local v3    # "ret":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lorg/abtollc/voip/reghandler/RegHandlerCallback;->EMPTY_STR:Lorg/abtollc/jni/pj_str_t;

    goto :goto_0
.end method

.method public on_save_contact(ILorg/abtollc/jni/pj_str_t;I)V
    .locals 6
    .param p1, "acc_id"    # I
    .param p2, "contact"    # Lorg/abtollc/jni/pj_str_t;
    .param p3, "expires"    # I

    .prologue
    .line 49
    iget-object v2, p0, Lorg/abtollc/voip/reghandler/RegHandlerCallback;->prefs_db:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg_uri_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 52
    .local v1, "now":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg_expires_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int v3, v1, p3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    return-void
.end method

.method public set_account_cleaning_state(II)V
    .locals 1
    .param p1, "acc_id"    # I
    .param p2, "active"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lorg/abtollc/voip/reghandler/RegHandlerCallback;->accountCleanRegisters:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    return-void
.end method
