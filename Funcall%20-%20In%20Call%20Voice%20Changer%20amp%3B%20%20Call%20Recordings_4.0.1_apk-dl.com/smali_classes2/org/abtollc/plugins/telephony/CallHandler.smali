.class public Lorg/abtollc/plugins/telephony/CallHandler;
.super Landroid/content/BroadcastReceiver;
.source "CallHandler.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "CallHandlerTelephony"

.field private static sPhoneAppBmp:Landroid/graphics/Bitmap;

.field private static sPhoneAppInfoLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lorg/abtollc/plugins/telephony/CallHandler;->sPhoneAppBmp:Landroid/graphics/Bitmap;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lorg/abtollc/plugins/telephony/CallHandler;->sPhoneAppInfoLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 33
    const-string v9, "org.abtollc.phone.action.HANDLE_CALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 35
    const/4 v5, 0x0

    .line 36
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    const-string v9, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "number":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-static {p1}, Lorg/abtollc/utils/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 41
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v3, "i":Landroid/content/Intent;
    const-string v9, "tel"

    const/4 v10, 0x0

    invoke-static {v9, v4, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 43
    invoke-static {p1, v11, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 47
    .end local v3    # "i":Landroid/content/Intent;
    :cond_0
    sget-boolean v9, Lorg/abtollc/plugins/telephony/CallHandler;->sPhoneAppInfoLoaded:Z

    if-nez v9, :cond_3

    .line 48
    invoke-static {p1}, Lorg/abtollc/utils/PhoneCapabilityTester;->resolvePackageForPriviledgedCall(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, "callers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_2

    .line 50
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 51
    .local v0, "caller":Landroid/content/pm/ResolveInfo;
    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.android"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 56
    .local v6, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    .line 57
    .local v7, "remoteRes":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v9

    invoke-static {v7, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    sput-object v9, Lorg/abtollc/plugins/telephony/CallHandler;->sPhoneAppBmp:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "caller":Landroid/content/pm/ResolveInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "remoteRes":Landroid/content/res/Resources;
    :cond_2
    :goto_0
    sput-boolean v12, Lorg/abtollc/plugins/telephony/CallHandler;->sPhoneAppInfoLoaded:Z

    .line 70
    .end local v1    # "callers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    invoke-virtual {p0, v12}, Lorg/abtollc/plugins/telephony/CallHandler;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v8

    .line 71
    .local v8, "results":Landroid/os/Bundle;
    if-eqz v5, :cond_4

    .line 72
    const-string v9, "android.intent.extra.remote_intent_token"

    invoke-virtual {v8, v9, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    :cond_4
    const-string v9, "android.intent.extra.TITLE"

    const-string v10, "use_pstn"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v9, Lorg/abtollc/plugins/telephony/CallHandler;->sPhoneAppBmp:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_5

    .line 76
    const-string v9, "android.intent.extra.shortcut.ICON"

    sget-object v10, Lorg/abtollc/plugins/telephony/CallHandler;->sPhoneAppBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    :cond_5
    const-string v9, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v8, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v8    # "results":Landroid/os/Bundle;
    :cond_6
    return-void

    .line 58
    .restart local v0    # "caller":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "callers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "CallHandlerTelephony"

    const-string v10, "Impossible to load "

    invoke-static {v9, v10, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
