.class public Lcom/weirdvoice/service/SipNotifications;
.super Ljava/lang/Object;
.source "SipNotifications.java"


# static fields
.field public static final CALLLOG_NOTIF_ID:I = 0x3

.field public static final CALL_NOTIF_ID:I = 0x2

.field public static final MESSAGE_NOTIF_ID:I = 0x4

.field public static final REGISTER_NOTIF_ID:I = 0x1

.field private static final SET_FG_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final START_FG_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final STOP_FG_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final THIS_FILE:Ljava/lang/String; = "Notifications"

.field private static TO_SEARCH:Ljava/lang/String; = null

.field public static final VOICEMAIL_NOTIF_ID:I = 0x5

.field private static isInit:Z

.field private static viewingRemoteFrom:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

.field private isServiceWrapper:Z

.field private mSetForeground:Ljava/lang/reflect/Method;

.field private mSetForegroundArgs:[Ljava/lang/Object;

.field private mStartForeground:Ljava/lang/reflect/Method;

.field private mStartForegroundArgs:[Ljava/lang/Object;

.field private mStopForeground:Ljava/lang/reflect/Method;

.field private mStopForegroundArgs:[Ljava/lang/Object;

.field private messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

.field private messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

.field private missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private notificationPrimaryTextColor:Ljava/lang/Integer;

.field private resolveContacts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    sput-boolean v2, Lcom/weirdvoice/service/SipNotifications;->isInit:Z

    .line 99
    const-string v0, "Search"

    sput-object v0, Lcom/weirdvoice/service/SipNotifications;->TO_SEARCH:Ljava/lang/String;

    .line 147
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/weirdvoice/service/SipNotifications;->SET_FG_SIG:[Ljava/lang/Class;

    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    sput-object v0, Lcom/weirdvoice/service/SipNotifications;->START_FG_SIG:[Ljava/lang/Class;

    .line 149
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/weirdvoice/service/SipNotifications;->STOP_FG_SIG:[Ljava/lang/Class;

    .line 489
    const/4 v0, 0x0

    sput-object v0, Lcom/weirdvoice/service/SipNotifications;->viewingRemoteFrom:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v2, p0, Lcom/weirdvoice/service/SipNotifications;->resolveContacts:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->notificationPrimaryTextColor:Ljava/lang/Integer;

    .line 155
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->mSetForegroundArgs:[Ljava/lang/Object;

    .line 156
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->mStartForegroundArgs:[Ljava/lang/Object;

    .line 157
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->mStopForegroundArgs:[Ljava/lang/Object;

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/service/SipNotifications;->isServiceWrapper:Z

    .line 83
    iput-object p1, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    .line 86
    sget-boolean v0, Lcom/weirdvoice/service/SipNotifications;->isInit:Z

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipNotifications;->cancelAll()V

    .line 88
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipNotifications;->cancelCalls()V

    .line 89
    sput-boolean v2, Lcom/weirdvoice/service/SipNotifications;->isInit:Z

    .line 92
    :cond_0
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-direct {p0, p1}, Lcom/weirdvoice/service/SipNotifications;->searchNotificationPrimaryText(Landroid/content/Context;)V

    .line 95
    :cond_1
    return-void
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x20

    .line 496
    move-object v1, p1

    .line 498
    .local v1, "displayAddress":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v4, ""

    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 503
    .local v2, "offset":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 504
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 505
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :cond_0
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 509
    .local v3, "spanText":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 511
    return-object v3

    .line 498
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "offset":I
    .end local v3    # "spanText":Landroid/text/SpannableString;
    :cond_1
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private formatNotificationTitle(IJ)Ljava/lang/String;
    .locals 6
    .param p1, "title"    # I
    .param p2, "accId"    # J

    .prologue
    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 322
    .local v1, "notifTitle":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    .line 323
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v3, v4

    .line 322
    invoke-static {v2, p2, p3, v3}, Lcom/weirdvoice/api/SipProfile;->getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    .line 324
    .local v0, "acc":Lcom/weirdvoice/api/SipProfile;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v2, v0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private formatRemoteContactString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "remoteContact"    # Ljava/lang/String;

    .prologue
    .line 299
    move-object v1, p1

    .line 300
    .local v1, "formattedRemoteContact":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/weirdvoice/service/SipNotifications;->resolveContacts:Z

    if-eqz v3, :cond_0

    .line 301
    iget-object v3, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/weirdvoice/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lcom/weirdvoice/models/CallerInfo;

    move-result-object v0

    .line 302
    .local v0, "callerInfo":Lcom/weirdvoice/models/CallerInfo;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/weirdvoice/models/CallerInfo;->contactExists:Z

    if-eqz v3, :cond_0

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v2, "remoteInfo":Ljava/lang/StringBuilder;
    iget-object v3, v0, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {p1}, Lcom/weirdvoice/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    .end local v0    # "callerInfo":Lcom/weirdvoice/models/CallerInfo;
    .end local v2    # "remoteInfo":Ljava/lang/StringBuilder;
    :cond_0
    return-object v1
.end method

.method private invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "Notifications"

    const-string v2, "Unable to invoke method"

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "Notifications"

    const-string v2, "Unable to invoke method"

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private recurseSearchNotificationPrimaryText(Landroid/view/ViewGroup;)Z
    .locals 6
    .param p1, "gp"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    .line 126
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 127
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 141
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 128
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "szText":Ljava/lang/String;
    sget-object v4, Lcom/weirdvoice/service/SipNotifications;->TO_SEARCH:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->notificationPrimaryTextColor:Ljava/lang/Integer;

    move v4, v5

    .line 133
    goto :goto_1

    .line 135
    .end local v2    # "szText":Ljava/lang/String;
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 136
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/weirdvoice/service/SipNotifications;->recurseSearchNotificationPrimaryText(Landroid/view/ViewGroup;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 137
    goto :goto_1

    .line 127
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private searchNotificationPrimaryText(Landroid/content/Context;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 112
    :try_start_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    sget-object v2, Lcom/weirdvoice/service/SipNotifications;->TO_SEARCH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 114
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 115
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 116
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Notifications"

    const-string v3, "Can\'t retrieve the color"

    invoke-static {v2, v3, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startForegroundCompat(ILandroid/app/Notification;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->mStartForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 179
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->mStartForegroundArgs:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 180
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->mStartForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/weirdvoice/service/SipNotifications;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/weirdvoice/service/SipNotifications;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->mSetForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 186
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/weirdvoice/service/SipNotifications;->mSetForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/weirdvoice/service/SipNotifications;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private stopForegroundCompat(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->mStopForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->mStopForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 198
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->mStopForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/weirdvoice/service/SipNotifications;->mStopForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/weirdvoice/service/SipNotifications;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 205
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->mSetForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 206
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/weirdvoice/service/SipNotifications;->mSetForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/weirdvoice/service/SipNotifications;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final cancelAll()V
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/weirdvoice/service/SipNotifications;->isServiceWrapper:Z

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipNotifications;->cancelRegisters()V

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipNotifications;->cancelMessages()V

    .line 546
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipNotifications;->cancelMissedCalls()V

    .line 547
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipNotifications;->cancelVoicemails()V

    .line 548
    return-void
.end method

.method public final cancelCalls()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 525
    return-void
.end method

.method public final cancelMessages()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 533
    return-void
.end method

.method public final cancelMissedCalls()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 529
    return-void
.end method

.method public final cancelRegisters()V
    .locals 2

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/weirdvoice/service/SipNotifications;->isServiceWrapper:Z

    if-nez v0, :cond_0

    .line 517
    const-string v0, "Notifications"

    const-string v1, "Trying to cancel a service notification from outside the service"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :goto_0
    return-void

    .line 520
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/weirdvoice/service/SipNotifications;->stopForegroundCompat(I)V

    goto :goto_0
.end method

.method public final cancelVoicemails()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/weirdvoice/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 537
    return-void
.end method

.method public declared-synchronized notifyRegisteredAccounts(Ljava/util/ArrayList;Z)V
    .locals 14
    .param p2, "showNumbers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/weirdvoice/api/SipProfileState;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "activeAccountsInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/api/SipProfileState;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v9, p0, Lcom/weirdvoice/service/SipNotifications;->isServiceWrapper:Z

    if-nez v9, :cond_0

    .line 240
    const-string v9, "Notifications"

    const-string v12, "Trying to create a service notification from outside the service"

    invoke-static {v9, v12}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :goto_0
    monitor-exit p0

    return-void

    .line 243
    :cond_0
    const v3, 0x7f0203fa

    .line 246
    .local v3, "icon":I
    :try_start_1
    iget-object v9, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    const-string v12, "connectivity"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 248
    .local v0, "conMan":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    .line 249
    .local v4, "mobile":Landroid/net/NetworkInfo$State;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 250
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 251
    :cond_1
    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v9, :cond_2

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v9, :cond_3

    .line 252
    :cond_2
    const v3, 0x7f0203f9

    .line 255
    .end local v0    # "conMan":Landroid/net/ConnectivityManager;
    .end local v4    # "mobile":Landroid/net/NetworkInfo$State;
    :cond_3
    :goto_1
    :try_start_2
    iget-object v9, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    const v12, 0x7f0c000e

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, "tickerText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 258
    .local v10, "when":J
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v9, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    .local v5, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 260
    invoke-virtual {v5, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 261
    invoke-virtual {v5, v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 262
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.weirdvoice.phone.action.DIALER"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v7, "notificationIntent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 264
    iget-object v9, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v9, v12, v7, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 266
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v2, Lcom/weirdvoice/widgets/RegistrationNotification;

    iget-object v9, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Lcom/weirdvoice/widgets/RegistrationNotification;-><init>(Ljava/lang/String;)V

    .line 267
    .local v2, "contentView":Lcom/weirdvoice/widgets/RegistrationNotification;
    invoke-virtual {v2}, Lcom/weirdvoice/widgets/RegistrationNotification;->clearRegistrations()V

    .line 269
    const/16 v9, 0x9

    invoke-static {v9}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 270
    iget-object v9, p0, Lcom/weirdvoice/service/SipNotifications;->notificationPrimaryTextColor:Ljava/lang/Integer;

    invoke-virtual {v2, v9}, Lcom/weirdvoice/widgets/RegistrationNotification;->setTextsColor(Ljava/lang/Integer;)V

    .line 273
    :cond_4
    iget-object v9, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v2, v9, p1}, Lcom/weirdvoice/widgets/RegistrationNotification;->addAccountInfos(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 277
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 278
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 279
    invoke-virtual {v5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 280
    invoke-virtual {v5, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 282
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 283
    .local v6, "notification":Landroid/app/Notification;
    iget v9, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v6, Landroid/app/Notification;->flags:I

    .line 285
    iput-object v2, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 286
    if-eqz p2, :cond_5

    .line 288
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, v6, Landroid/app/Notification;->number:I

    .line 290
    :cond_5
    const/4 v9, 0x1

    invoke-direct {p0, v9, v6}, Lcom/weirdvoice/service/SipNotifications;->startForegroundCompat(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 239
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "contentView":Lcom/weirdvoice/widgets/RegistrationNotification;
    .end local v3    # "icon":I
    .end local v5    # "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "notificationIntent":Landroid/content/Intent;
    .end local v8    # "tickerText":Ljava/lang/CharSequence;
    .end local v10    # "when":J
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 253
    .restart local v3    # "icon":I
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public onServiceCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startForeground"

    sget-object v3, Lcom/weirdvoice/service/SipNotifications;->START_FG_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/service/SipNotifications;->mStartForeground:Ljava/lang/reflect/Method;

    .line 214
    iget-object v1, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stopForeground"

    sget-object v3, Lcom/weirdvoice/service/SipNotifications;->STOP_FG_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/service/SipNotifications;->mStopForeground:Ljava/lang/reflect/Method;

    .line 215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/weirdvoice/service/SipNotifications;->isServiceWrapper:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/weirdvoice/service/SipNotifications;->mStopForeground:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/weirdvoice/service/SipNotifications;->mStartForeground:Ljava/lang/reflect/Method;

    .line 222
    :try_start_1
    iget-object v1, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setForeground"

    sget-object v3, Lcom/weirdvoice/service/SipNotifications;->SET_FG_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/service/SipNotifications;->mSetForeground:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    iput-boolean v4, p0, Lcom/weirdvoice/service/SipNotifications;->isServiceWrapper:Z

    goto :goto_0

    .line 223
    :catch_1
    move-exception v0

    .line 224
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OS doesn\'t have Service.startForeground OR Service.setForeground!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onServiceDestroy()V
    .locals 0

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipNotifications;->cancelAll()V

    .line 232
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipNotifications;->cancelCalls()V

    .line 233
    return-void
.end method

.method public setViewingMessageFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteFrom"    # Ljava/lang/String;

    .prologue
    .line 492
    sput-object p1, Lcom/weirdvoice/service/SipNotifications;->viewingRemoteFrom:Ljava/lang/String;

    .line 493
    return-void
.end method

.method public showNotificationForCall(Lcom/weirdvoice/api/SipCallSession;)V
    .locals 17
    .param p1, "callInfo"    # Lcom/weirdvoice/api/SipCallSession;

    .prologue
    .line 335
    const v5, 0x7f0202db

    .line 336
    .local v5, "icon":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    const v15, 0x7f0c01fa

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 337
    .local v10, "tickerText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 339
    .local v12, "when":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v14, :cond_0

    .line 340
    new-instance v14, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/weirdvoice/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 341
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v14, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 342
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v14, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v14, v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 347
    :cond_0
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->appname()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "appName":Ljava/lang/String;
    const-string v8, ""

    .line 350
    .local v8, "nottl":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/weirdvoice/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v8

    .line 351
    const-string v11, ""

    .line 353
    .local v11, "tmp":Ljava/lang/String;
    const-string v14, "_"

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 354
    .local v9, "parts":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v9, v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v8, v14, v15

    .line 356
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x10

    if-ge v14, v15, :cond_1

    .line 357
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-lt v4, v14, :cond_2

    .line 364
    .end local v4    # "i":I
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 368
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v11    # "tmp":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/weirdvoice/service/SipService;->buildCallUiIntent(Landroid/content/Context;Lcom/weirdvoice/api/SipCallSession;)Landroid/content/Intent;

    move-result-object v7

    .line 369
    .local v7, "notificationIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-static {v14, v15, v7, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 371
    .local v3, "contentIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v14, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    const v16, 0x7f0c01fa

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 373
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v14, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 375
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v14}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 376
    .local v6, "notification":Landroid/app/Notification;
    iget v14, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v14, v14, 0x20

    iput v14, v6, Landroid/app/Notification;->flags:I

    .line 377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v15, 0x2

    invoke-virtual {v14, v15, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 378
    return-void

    .line 358
    .end local v3    # "contentIntent":Landroid/app/PendingIntent;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "notificationIntent":Landroid/content/Intent;
    .restart local v4    # "i":I
    .restart local v9    # "parts":[Ljava/lang/String;
    .restart local v11    # "tmp":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    if-eq v14, v15, :cond_3

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x31

    if-eq v14, v15, :cond_3

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x32

    if-eq v14, v15, :cond_3

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x33

    if-eq v14, v15, :cond_3

    .line 359
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x34

    if-eq v14, v15, :cond_3

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x35

    if-eq v14, v15, :cond_3

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x36

    if-eq v14, v15, :cond_3

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x37

    if-eq v14, v15, :cond_3

    .line 360
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x38

    if-eq v14, v15, :cond_3

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x39

    if-ne v14, v15, :cond_4

    .line 361
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 357
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 366
    .end local v4    # "i":I
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v11    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v14

    goto/16 :goto_1
.end method

.method public showNotificationForMessage(Lcom/weirdvoice/api/SipMessage;)V
    .locals 10
    .param p1, "msg"    # Lcom/weirdvoice/api/SipMessage;

    .prologue
    const/high16 v9, 0x10000000

    const/4 v8, 0x1

    .line 409
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->supportMessaging()Z

    move-result v4

    if-nez v4, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipMessage;->getFrom()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/weirdvoice/service/SipNotifications;->viewingRemoteFrom:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 414
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipMessage;->getFullFrom()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/weirdvoice/service/SipNotifications;->formatRemoteContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "from":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipMessage;->getFullFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    :cond_2
    iget-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipMessage;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/weirdvoice/service/SipNotifications;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 420
    .local v3, "tickerText":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v4, :cond_3

    .line 421
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 422
    iget-object v5, p0, Lcom/weirdvoice/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {v1}, Lcom/weirdvoice/api/SipUri;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0203fb

    :goto_1
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 423
    iget-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 424
    iget-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 425
    iget-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 426
    iget-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 427
    iget-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 430
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.weirdvoice.phone.action.MESSAGES"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v2, "notificationIntent":Landroid/content/Intent;
    const-string v4, "sender"

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipMessage;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    const-string v4, "body"

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipMessage;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 434
    iget-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 436
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 437
    iget-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipMessage;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 438
    iget-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 440
    iget-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/weirdvoice/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 422
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "notificationIntent":Landroid/content/Intent;
    :cond_4
    const v4, 0x1080077

    goto :goto_1
.end method

.method public showNotificationForMissedCall(Landroid/content/ContentValues;)V
    .locals 14
    .param p1, "callLog"    # Landroid/content/ContentValues;

    .prologue
    const v13, 0x7f0c01fb

    const/high16 v12, 0x10000000

    const/4 v11, 0x1

    .line 381
    const v3, 0x108007f

    .line 382
    .local v3, "icon":I
    iget-object v7, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 383
    .local v6, "tickerText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 385
    .local v8, "when":J
    iget-object v7, p0, Lcom/weirdvoice/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v7, :cond_0

    .line 386
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v10, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-direct {v7, v10}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/weirdvoice/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 387
    iget-object v7, p0, Lcom/weirdvoice/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 388
    iget-object v7, p0, Lcom/weirdvoice/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 389
    iget-object v7, p0, Lcom/weirdvoice/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 390
    iget-object v7, p0, Lcom/weirdvoice/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 391
    iget-object v7, p0, Lcom/weirdvoice/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 392
    iget-object v7, p0, Lcom/weirdvoice/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 395
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.weirdvoice.phone.action.CALLLOG"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v4, "notificationIntent":Landroid/content/Intent;
    invoke-virtual {v4, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 397
    iget-object v7, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v7, v10, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 399
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    const-string v7, "number"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 400
    .local v5, "remoteContact":Ljava/lang/String;
    const-string v7, "account_id"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 401
    .local v0, "accId":J
    iget-object v7, p0, Lcom/weirdvoice/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0, v13, v0, v1}, Lcom/weirdvoice/service/SipNotifications;->formatNotificationTitle(IJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 402
    iget-object v7, p0, Lcom/weirdvoice/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0, v5}, Lcom/weirdvoice/service/SipNotifications;->formatRemoteContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 403
    iget-object v7, p0, Lcom/weirdvoice/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 405
    iget-object v7, p0, Lcom/weirdvoice/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/weirdvoice/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 406
    return-void
.end method

.method public showNotificationForVoiceMail(Lcom/weirdvoice/api/SipProfile;I)V
    .locals 9
    .param p1, "acc"    # Lcom/weirdvoice/api/SipProfile;
    .param p2, "numberOfMessages"    # I

    .prologue
    const v8, 0x7f0c0225

    const/high16 v7, 0x10000000

    const/4 v6, 0x1

    .line 445
    iget-object v3, p0, Lcom/weirdvoice/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v3, :cond_0

    .line 447
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/weirdvoice/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 448
    iget-object v3, p0, Lcom/weirdvoice/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    const v4, 0x108007e

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 449
    iget-object v3, p0, Lcom/weirdvoice/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 450
    iget-object v3, p0, Lcom/weirdvoice/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 451
    iget-object v3, p0, Lcom/weirdvoice/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 452
    iget-object v3, p0, Lcom/weirdvoice/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 453
    iget-object v3, p0, Lcom/weirdvoice/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 456
    :cond_0
    const/4 v0, 0x0

    .line 458
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    if-eqz p1, :cond_4

    iget-object v3, p1, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    const-string v4, "null"

    if-eq v3, v4, :cond_4

    .line 459
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v2, "notificationIntent":Landroid/content/Intent;
    const-string v3, "csip"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 460
    invoke-static {v3, v4}, Lcom/weirdvoice/api/SipUri;->forgeSipUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 462
    const-string v3, "acc_id"

    iget-wide v4, p1, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 466
    :goto_0
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 467
    iget-object v3, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 470
    const-string v1, ""

    .line 471
    .local v1, "messageText":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    if-lez p2, :cond_1

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    :cond_1
    if-lez p2, :cond_2

    .line 478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 481
    :cond_2
    iget-object v3, p0, Lcom/weirdvoice/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/weirdvoice/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 482
    iget-object v3, p0, Lcom/weirdvoice/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 483
    if-eqz v0, :cond_3

    .line 484
    iget-object v3, p0, Lcom/weirdvoice/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 485
    iget-object v3, p0, Lcom/weirdvoice/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/weirdvoice/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 487
    :cond_3
    return-void

    .line 464
    .end local v1    # "messageText":Ljava/lang/String;
    .end local v2    # "notificationIntent":Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.weirdvoice.phone.action.DIALER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2    # "notificationIntent":Landroid/content/Intent;
    goto :goto_0
.end method
