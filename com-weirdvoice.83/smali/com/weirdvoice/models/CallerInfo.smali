.class public Lcom/weirdvoice/models/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/models/CallerInfo$CallerInfoLruCache;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/weirdvoice/models/CallerInfo;

.field private static final THIS_FILE:Ljava/lang/String; = "CallerInfo"

.field private static callerCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/weirdvoice/models/CallerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public contactContentUri:Landroid/net/Uri;

.field public contactExists:Z

.field public contactRingtoneUri:Landroid/net/Uri;

.field public name:Ljava/lang/String;

.field public numberLabel:Ljava/lang/String;

.field public numberType:I

.field public personId:J

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoId:J

.field public photoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/weirdvoice/models/CallerInfo;

    invoke-direct {v0}, Lcom/weirdvoice/models/CallerInfo;-><init>()V

    sput-object v0, Lcom/weirdvoice/models/CallerInfo;->EMPTY:Lcom/weirdvoice/models/CallerInfo;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallerInfoForSelf(Landroid/content/Context;)Lcom/weirdvoice/models/CallerInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-static {}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getInstance()Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->findSelfInfo(Landroid/content/Context;)Lcom/weirdvoice/models/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lcom/weirdvoice/models/CallerInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/weirdvoice/models/CallerInfo;->EMPTY:Lcom/weirdvoice/models/CallerInfo;

    .line 120
    :goto_0
    return-object v0

    .line 116
    :cond_0
    sget-object v0, Lcom/weirdvoice/models/CallerInfo;->callerCache:Landroid/support/v4/util/LruCache;

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Lcom/weirdvoice/models/CallerInfo$CallerInfoLruCache;

    invoke-direct {v0, p0}, Lcom/weirdvoice/models/CallerInfo$CallerInfoLruCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/weirdvoice/models/CallerInfo;->callerCache:Landroid/support/v4/util/LruCache;

    .line 119
    :cond_1
    sget-object v1, Lcom/weirdvoice/models/CallerInfo;->callerCache:Landroid/support/v4/util/LruCache;

    monitor-enter v1

    .line 120
    :try_start_0
    sget-object v0, Lcom/weirdvoice/models/CallerInfo;->callerCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/models/CallerInfo;

    monitor-exit v1

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
