.class public Lorg/abtollc/utils/CallHandlerPlugin;
.super Ljava/lang/Object;
.source "CallHandlerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;
    }
.end annotation


# static fields
.field private static AVAILABLE_HANDLERS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_REMOTE_INTENT_TOKEN:Ljava/lang/String; = "android.intent.extra.remote_intent_token"

.field private static final THIS_FILE:Ljava/lang/String; = "CallHandlerPlugin"

.field private static final VIRTUAL_ACC_MAX_ENTRIES:Ljava/lang/String; = "maxVirtualAcc"

.field private static final VIRTUAL_ACC_PREFIX:Ljava/lang/String; = "vAcc_"

.field private static sThreadHandler:Landroid/os/Handler;


# instance fields
.field private accountId:J

.field private final context:Landroid/content/Context;

.field private icon:Landroid/graphics/Bitmap;

.field private label:Ljava/lang/String;

.field private listener:Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;

.field private nextExclude:Ljava/lang/String;

.field private pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-object v0, Lorg/abtollc/utils/CallHandlerPlugin;->AVAILABLE_HANDLERS:Ljava/util/Map;

    .line 52
    sput-object v0, Lorg/abtollc/utils/CallHandlerPlugin;->sThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->pendingIntent:Landroid/app/PendingIntent;

    .line 37
    iput-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->icon:Landroid/graphics/Bitmap;

    .line 38
    iput-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->nextExclude:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->label:Ljava/lang/String;

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->accountId:J

    .line 49
    iput-object p1, p0, Lorg/abtollc/utils/CallHandlerPlugin;->context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/abtollc/utils/CallHandlerPlugin;)Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/utils/CallHandlerPlugin;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->listener:Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;

    return-object v0
.end method

.method public static clearAvailableCallHandlers()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    sput-object v0, Lorg/abtollc/utils/CallHandlerPlugin;->AVAILABLE_HANDLERS:Ljava/util/Map;

    .line 183
    return-void
.end method

.method public static getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;
    .locals 13
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, -0x1

    .line 125
    const-string v7, "handlerCache"

    invoke-virtual {p0, v7, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 127
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-wide/16 v0, -0x1

    .line 129
    .local v0, "accountId":J
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vAcc_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, -0x1

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 133
    :goto_0
    cmp-long v7, v0, v10

    if-nez v7, :cond_0

    .line 135
    const-string v7, "maxVirtualAcc"

    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 136
    .local v5, "maxAcc":I
    add-int/lit8 v2, v5, 0x1

    .line 137
    .local v2, "currentEntry":I
    int-to-long v8, v2

    sub-long v0, v10, v8

    .line 138
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 139
    .local v4, "edt":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vAcc_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 140
    const-string v7, "maxVirtualAcc"

    invoke-interface {v4, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    .end local v2    # "currentEntry":I
    .end local v4    # "edt":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "maxAcc":I
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    return-object v7

    .line 130
    :catch_0
    move-exception v3

    .line 131
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "CallHandlerPlugin"

    const-string v8, "Can\'t retrieve call handler cache id - reset"

    invoke-static {v7, v8}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAvailableCallHandlers(Landroid/content/Context;)Ljava/util/Map;
    .locals 10
    .param p0, "ctxt"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    sget-object v6, Lorg/abtollc/utils/CallHandlerPlugin;->AVAILABLE_HANDLERS:Ljava/util/Map;

    if-nez v6, :cond_1

    .line 156
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/abtollc/utils/CallHandlerPlugin;->AVAILABLE_HANDLERS:Ljava/util/Map;

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 159
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "org.abtollc.phone.action.HANDLE_CALL"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "it":Landroid/content/Intent;
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 162
    .local v1, "availables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 163
    .local v5, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 164
    .local v0, "actInfos":Landroid/content/pm/ActivityInfo;
    const-string v6, "CallHandlerPlugin"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found call handler "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v6, "android.permission.PROCESS_OUTGOING_CALLS"

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 167
    new-instance v6, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "packagedActivityName":Ljava/lang/String;
    sget-object v8, Lorg/abtollc/utils/CallHandlerPlugin;->AVAILABLE_HANDLERS:Ljava/util/Map;

    .line 170
    invoke-virtual {v5, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 169
    invoke-interface {v8, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    .end local v0    # "actInfos":Landroid/content/pm/ActivityInfo;
    .end local v1    # "availables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "it":Landroid/content/Intent;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "packagedActivityName":Ljava/lang/String;
    .end local v5    # "resInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    sget-object v6, Lorg/abtollc/utils/CallHandlerPlugin;->AVAILABLE_HANDLERS:Ljava/util/Map;

    return-object v6
.end method

.method public static initHandler()V
    .locals 3

    .prologue
    .line 276
    sget-object v1, Lorg/abtollc/utils/CallHandlerPlugin;->sThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 277
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 279
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lorg/abtollc/utils/CallHandlerPlugin;->sThreadHandler:Landroid/os/Handler;

    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method public fillWith(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resolvedInfos"    # Landroid/os/Bundle;

    .prologue
    .line 103
    const-string v0, "android.intent.extra.remote_intent_token"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->pendingIntent:Landroid/app/PendingIntent;

    .line 104
    const-string v0, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->icon:Landroid/graphics/Bitmap;

    .line 105
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->nextExclude:Ljava/lang/String;

    .line 106
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->label:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lorg/abtollc/utils/CallHandlerPlugin;->AVAILABLE_HANDLERS:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/abtollc/utils/CallHandlerPlugin;->AVAILABLE_HANDLERS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lorg/abtollc/utils/CallHandlerPlugin;->AVAILABLE_HANDLERS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->label:Ljava/lang/String;

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/abtollc/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->accountId:J

    .line 114
    return-void
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->accountId:J

    return-wide v0
.end method

.method public getFakeProfile()Lorg/abtollc/api/SipProfile;
    .locals 4

    .prologue
    .line 267
    new-instance v0, Lorg/abtollc/api/SipProfile;

    invoke-direct {v0}, Lorg/abtollc/api/SipProfile;-><init>()V

    .line 268
    .local v0, "profile":Lorg/abtollc/api/SipProfile;
    iget-wide v2, p0, Lorg/abtollc/utils/CallHandlerPlugin;->accountId:J

    iput-wide v2, v0, Lorg/abtollc/api/SipProfile;->id:J

    .line 269
    iget-object v1, p0, Lorg/abtollc/utils/CallHandlerPlugin;->label:Ljava/lang/String;

    iput-object v1, v0, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lorg/abtollc/utils/CallHandlerPlugin;->icon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lorg/abtollc/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 271
    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lorg/abtollc/utils/CallHandlerPlugin;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/abtollc/utils/CallHandlerPlugin;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getNextExcludeTelNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->nextExclude:Ljava/lang/String;

    return-object v0
.end method

.method public loadFrom(Ljava/lang/Long;Ljava/lang/String;Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;)V
    .locals 4
    .param p1, "accountId"    # Ljava/lang/Long;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "l"    # Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;

    .prologue
    .line 91
    iget-object v2, p0, Lorg/abtollc/utils/CallHandlerPlugin;->context:Landroid/content/Context;

    invoke-static {v2}, Lorg/abtollc/utils/CallHandlerPlugin;->getAvailableCallHandlers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 92
    .local v0, "callHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lorg/abtollc/utils/CallHandlerPlugin;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lorg/abtollc/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 94
    invoke-virtual {p0, v1, p2, p3}, Lorg/abtollc/utils/CallHandlerPlugin;->loadFrom(Ljava/lang/String;Ljava/lang/String;Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;)V

    .line 99
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public loadFrom(Ljava/lang/String;Ljava/lang/String;Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;)V
    .locals 9
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "l"    # Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;

    .prologue
    const/4 v6, 0x0

    .line 62
    iput-object p3, p0, Lorg/abtollc/utils/CallHandlerPlugin;->listener:Lorg/abtollc/utils/CallHandlerPlugin$OnLoadListener;

    .line 63
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 65
    .local v8, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "org.abtollc.phone.action.HANDLE_CALL"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, "it":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Lorg/abtollc/utils/CallHandlerPlugin;->context:Landroid/content/Context;

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    new-instance v3, Lorg/abtollc/utils/CallHandlerPlugin$1;

    invoke-direct {v3, p0, p1}, Lorg/abtollc/utils/CallHandlerPlugin$1;-><init>(Lorg/abtollc/utils/CallHandlerPlugin;Ljava/lang/String;)V

    sget-object v4, Lorg/abtollc/utils/CallHandlerPlugin;->sThreadHandler:Landroid/os/Handler;

    const/4 v5, -0x1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 81
    return-void
.end method
