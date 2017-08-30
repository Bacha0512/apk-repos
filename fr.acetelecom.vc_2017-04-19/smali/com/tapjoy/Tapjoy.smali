.class public final Lcom/tapjoy/Tapjoy;
.super Ljava/lang/Object;


# static fields
.field public static final INTENT_EXTRA_PUSH_PAYLOAD:Ljava/lang/String; = "com.tapjoy.PUSH_PAYLOAD"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionComplete(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static addUserTag(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static awardCurrency(ILcom/tapjoy/TJAwardCurrencyListener;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/ed;->a(ILcom/tapjoy/TJAwardCurrencyListener;)V

    return-void
.end method

.method public static clearUserTags()V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ed;->g()V

    return-void
.end method

.method public static connect(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/ed;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 2

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/tapjoy/internal/ed;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 2

    const-class v1, Lcom/tapjoy/Tapjoy;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tapjoy/internal/ed;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static enablePaidAppWithActionID(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static endSession()V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ed;->e()V

    return-void
.end method

.method public static getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->a(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    return-void
.end method

.method public static getCurrencyMultiplier()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ed;->c()F

    move-result v0

    return v0
.end method

.method public static getUserTags()Ljava/util/Set;
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ed;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ed;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isConnected()Z
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ed;->i()Z

    move-result v0

    return v0
.end method

.method public static isPushNotificationDisabled()Z
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ed;->h()Z

    move-result v0

    return v0
.end method

.method public static loadSharedLibrary()V
    .locals 1

    :try_start_0
    const-string v0, "tapjoy"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static onActivityStart(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static onActivityStop(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static removeUserTag(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static setAppDataVersion(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrencyMultiplier(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->a(F)V

    return-void
.end method

.method public static setDebugEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->a(Z)V

    return-void
.end method

.method public static setEarnedCurrencyListener(Lcom/tapjoy/TJEarnedCurrencyListener;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->a(Lcom/tapjoy/TJEarnedCurrencyListener;)V

    return-void
.end method

.method public static setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->a(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method

.method public static setGcmSender(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static setPushNotificationDisabled(Z)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->b(Z)V

    return-void
.end method

.method public static setUserCohortVariable(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/ed;->a(ILjava/lang/String;)V

    return-void
.end method

.method public static setUserFriendCount(I)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->b(I)V

    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapjoy/Tapjoy;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    return-void
.end method

.method public static setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/ed;->a(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    return-void
.end method

.method public static setUserLevel(I)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->a(I)V

    return-void
.end method

.method public static setUserTags(Ljava/util/Set;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->a(Ljava/util/Set;)V

    return-void
.end method

.method public static setVideoListener(Lcom/tapjoy/TJVideoListener;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->a(Lcom/tapjoy/TJVideoListener;)V

    return-void
.end method

.method public static spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/ed;->a(ILcom/tapjoy/TJSpendCurrencyListener;)V

    return-void
.end method

.method public static startSession()V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ed;->d()V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ed;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;J)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tapjoy/internal/ed;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tapjoy/internal/ed;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tapjoy/internal/ed;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/tapjoy/internal/ed;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/internal/ed;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 11

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Lcom/tapjoy/internal/ed;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
    .locals 15

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    invoke-virtual/range {v0 .. v13}, Lcom/tapjoy/internal/ed;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/internal/ed;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/ed;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/tapjoy/internal/ed;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tapjoy/internal/ed;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
