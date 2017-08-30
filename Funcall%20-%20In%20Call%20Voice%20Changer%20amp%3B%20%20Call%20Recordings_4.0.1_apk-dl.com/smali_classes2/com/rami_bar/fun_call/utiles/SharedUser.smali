.class public Lcom/rami_bar/fun_call/utiles/SharedUser;
.super Ljava/lang/Object;
.source "SharedUser.java"


# static fields
.field private static CALLING_COUNTRY:Ljava/lang/String; = null

.field private static EMAIL:Ljava/lang/String; = null

.field private static FILE_USER_ID:Ljava/lang/String; = null

.field private static IAP_ORDER_JSON:Ljava/lang/String; = null

.field private static IAP_SIGNATURE:Ljava/lang/String; = null

.field private static final IS_RECORDING:Ljava/lang/String; = "com.bar.rami.is_recording"

.field private static NOTIFICATION:Ljava/lang/String;

.field private static SHARED_MAIN:Ljava/lang/String;

.field private static START_COUNTER:Ljava/lang/String;

.field private static mSharedPreferences:Landroid/content/SharedPreferences;

.field private static sInstance:Lcom/rami_bar/fun_call/utiles/SharedUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->sInstance:Lcom/rami_bar/fun_call/utiles/SharedUser;

    .line 10
    const-string v0, "com.bar.rami"

    sput-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->SHARED_MAIN:Ljava/lang/String;

    .line 11
    const-string v0, "com.bar.rami.email"

    sput-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->EMAIL:Ljava/lang/String;

    .line 12
    const-string v0, "com.bar.rami.notification"

    sput-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->NOTIFICATION:Ljava/lang/String;

    .line 13
    const-string v0, "com.bar.rami.app_start_counter"

    sput-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->START_COUNTER:Ljava/lang/String;

    .line 14
    const-string v0, "com.bar.rami.calling_country"

    sput-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->CALLING_COUNTRY:Ljava/lang/String;

    .line 15
    const-string v0, "com.bar.rami.file_userid"

    sput-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->FILE_USER_ID:Ljava/lang/String;

    .line 16
    const-string v0, "com.bar.rami.order_json"

    sput-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->IAP_ORDER_JSON:Ljava/lang/String;

    .line 17
    const-string v0, "com.bar.rami.signature"

    sput-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->IAP_SIGNATURE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->sInstance:Lcom/rami_bar/fun_call/utiles/SharedUser;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/rami_bar/fun_call/utiles/SharedUser;

    invoke-direct {v0}, Lcom/rami_bar/fun_call/utiles/SharedUser;-><init>()V

    sput-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->sInstance:Lcom/rami_bar/fun_call/utiles/SharedUser;

    .line 25
    :cond_0
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->SHARED_MAIN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 27
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->sInstance:Lcom/rami_bar/fun_call/utiles/SharedUser;

    return-object v0
.end method


# virtual methods
.method public getCallingCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "country_code"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/rami_bar/fun_call/utiles/SharedUser;->CALLING_COUNTRY:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCounter()I
    .locals 3

    .prologue
    .line 79
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/rami_bar/fun_call/utiles/SharedUser;->START_COUNTER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/rami_bar/fun_call/utiles/SharedUser;->EMAIL:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/rami_bar/fun_call/utiles/SharedUser;->FILE_USER_ID:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsRecording(Z)Z
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 95
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "com.bar.rami.is_recording"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getNotification(Z)Z
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 83
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/rami_bar/fun_call/utiles/SharedUser;->NOTIFICATION:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getOrderJson()Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/rami_bar/fun_call/utiles/SharedUser;->IAP_ORDER_JSON:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/rami_bar/fun_call/utiles/SharedUser;->IAP_SIGNATURE:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCallingCountry(Ljava/lang/String;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/rami_bar/fun_call/utiles/SharedUser;->CALLING_COUNTRY:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method

.method public setCounter(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 45
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/rami_bar/fun_call/utiles/SharedUser;->START_COUNTER:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/rami_bar/fun_call/utiles/SharedUser;->EMAIL:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    return-void
.end method

.method public setFileUserId(Ljava/lang/String;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/rami_bar/fun_call/utiles/SharedUser;->FILE_USER_ID:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    return-void
.end method

.method public setIsRecording(Z)V
    .locals 2
    .param p1, "val"    # Z

    .prologue
    .line 53
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.bar.rami.is_recording"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public setNotification(Z)V
    .locals 2
    .param p1, "val"    # Z

    .prologue
    .line 49
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/rami_bar/fun_call/utiles/SharedUser;->NOTIFICATION:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    return-void
.end method

.method public setOrderJson(Ljava/lang/String;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/rami_bar/fun_call/utiles/SharedUser;->IAP_ORDER_JSON:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v0, Lcom/rami_bar/fun_call/utiles/SharedUser;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/rami_bar/fun_call/utiles/SharedUser;->IAP_SIGNATURE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method
