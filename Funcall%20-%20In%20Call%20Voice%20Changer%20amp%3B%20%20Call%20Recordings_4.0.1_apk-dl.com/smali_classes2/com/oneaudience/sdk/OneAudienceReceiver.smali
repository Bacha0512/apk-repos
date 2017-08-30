.class public Lcom/oneaudience/sdk/OneAudienceReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneaudience/sdk/OneAudienceReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/OneAudienceReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Lcom/oneaudience/sdk/i;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    const-string v2, "eventType"

    invoke-virtual {p1}, Lcom/oneaudience/sdk/i;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "packageName"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "eventDate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "packageVer"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/oneaudience/sdk/OneAudienceReceiver;->a:Ljava/lang/String;

    const-string v2, "Error creating event json object"

    invoke-static {v0, v2}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v1, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    sget-object v1, Lcom/oneaudience/sdk/i;->a:Lcom/oneaudience/sdk/i;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/oneaudience/sdk/b/f;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/oneaudience/sdk/OneAudienceReceiver;->a(Lcom/oneaudience/sdk/i;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "events"

    const-string v2, "[]"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object v0, Lcom/oneaudience/sdk/OneAudienceReceiver;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    sget-object v1, Lcom/oneaudience/sdk/OneAudienceReceiver;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneaudience/sdk/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    sget-object v1, Lcom/oneaudience/sdk/i;->c:Lcom/oneaudience/sdk/i;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/oneaudience/sdk/b/f;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    sget-object v1, Lcom/oneaudience/sdk/i;->b:Lcom/oneaudience/sdk/i;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/oneaudience/sdk/OneAudienceReceiver;->a:Ljava/lang/String;

    const-string v2, "Error Converting events string to JSON Array"

    invoke-static {v1, v2, v0}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/oneaudience/sdk/OneAudienceReceiver;->a:Ljava/lang/String;

    const-string v1, "Intent or Context is null"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v5, :cond_2

    sget-object v0, Lcom/oneaudience/sdk/OneAudienceReceiver;->a:Ljava/lang/String;

    const-string v1, "Intent Action is null"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/oneaudience/sdk/OneAudienceReceiver;->a:Ljava/lang/String;

    const-string v2, "Error OneAudienceReceiver, onReceive"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "oneaudience"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "com.oneaudience.action.CONFIGURATION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1, v2}, Lcom/oneaudience/sdk/f;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/oneaudience/sdk/l;->a(Landroid/content/Context;)Lcom/oneaudience/sdk/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneaudience/sdk/l;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/oneaudience/sdk/OneAudienceReceiver;->a:Ljava/lang/String;

    const-string v1, "Not Sending Configuration AppKey is Empty"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    sget-object v0, Lcom/oneaudience/sdk/OneAudienceReceiver;->a:Ljava/lang/String;

    const-string v1, "Intent Action or Intent Data is null"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {p1, v2}, Lcom/oneaudience/sdk/f;->c(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/oneaudience/sdk/OneAudienceReceiver;->a:Ljava/lang/String;

    const-string v1, "Not allowed to collect device events"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/oneaudience/sdk/OneAudienceReceiver;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
