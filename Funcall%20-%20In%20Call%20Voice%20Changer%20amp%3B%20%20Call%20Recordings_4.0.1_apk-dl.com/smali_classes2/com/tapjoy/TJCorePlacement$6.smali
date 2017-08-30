.class final Lcom/tapjoy/TJCorePlacement$6;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fa$a;

.field final synthetic b:Lcom/tapjoy/internal/eg;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/tapjoy/TJPlacement;

.field final synthetic e:Lcom/tapjoy/internal/fd;

.field final synthetic f:Lcom/tapjoy/TJCorePlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/internal/fa$a;Lcom/tapjoy/internal/eg;Ljava/lang/String;Lcom/tapjoy/TJPlacement;Lcom/tapjoy/internal/fd;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iput-object p2, p0, Lcom/tapjoy/TJCorePlacement$6;->a:Lcom/tapjoy/internal/fa$a;

    iput-object p3, p0, Lcom/tapjoy/TJCorePlacement$6;->b:Lcom/tapjoy/internal/eg;

    iput-object p4, p0, Lcom/tapjoy/TJCorePlacement$6;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tapjoy/TJCorePlacement$6;->d:Lcom/tapjoy/TJPlacement;

    iput-object p6, p0, Lcom/tapjoy/TJCorePlacement$6;->e:Lcom/tapjoy/internal/fd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v10, 0x0

    .line 323
    invoke-static {}, Lcom/tapjoy/TJCorePlacement;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending content request for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v2}, Lcom/tapjoy/TJCorePlacement;->f(Lcom/tapjoy/TJCorePlacement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v9, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v1}, Lcom/tapjoy/TJCorePlacement;->f(Lcom/tapjoy/TJCorePlacement;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v1}, Lcom/tapjoy/TJCorePlacement;->h(Lcom/tapjoy/TJCorePlacement;)Landroid/content/Context;

    move-result-object v6

    .line 9888
    iget-object v1, v0, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/gc;

    .line 10158
    iget-object v0, v1, Lcom/tapjoy/internal/gc;->a:Lcom/tapjoy/internal/fu;

    invoke-virtual {v0, v7}, Lcom/tapjoy/internal/fu;->a(Z)Lcom/tapjoy/internal/gl$n;

    move-result-object v4

    .line 10159
    new-instance v0, Lcom/tapjoy/internal/gz;

    iget-object v1, v1, Lcom/tapjoy/internal/gc;->a:Lcom/tapjoy/internal/fu;

    .line 10385
    iget-object v2, v4, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 10400
    iget-object v3, v4, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    .line 10415
    iget-object v4, v4, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 10159
    invoke-direct/range {v0 .. v6}, Lcom/tapjoy/internal/gz;-><init>(Lcom/tapjoy/internal/fu;Lcom/tapjoy/internal/gl$l;Lcom/tapjoy/internal/gl$a;Lcom/tapjoy/internal/gl$z;Ljava/lang/String;Landroid/content/Context;)V

    .line 325
    invoke-static {v9, v0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/internal/gz;)Lcom/tapjoy/internal/gz;

    .line 326
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    .line 327
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v2}, Lcom/tapjoy/TJCorePlacement;->g(Lcom/tapjoy/TJCorePlacement;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v13, v13, v2}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v2

    .line 329
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    iget v1, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacementData;->setHttpStatusCode(I)V

    .line 330
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    iget-object v1, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacementData;->setHttpResponse(Ljava/lang/String;)V

    .line 331
    const-string v0, "x-tapjoy-prerender"

    invoke-virtual {v2, v0}, Lcom/tapjoy/TapjoyHttpURLResponse;->getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tapjoy/TJPlacementData;->setPrerenderingRequested(Z)V

    .line 336
    :cond_0
    const-string v0, "X-Tapjoy-Debug"

    invoke-virtual {v2, v0}, Lcom/tapjoy/TapjoyHttpURLResponse;->getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_1

    .line 338
    invoke-static {}, Lcom/tapjoy/TJCorePlacement;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tapjoy-Server-Debug: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_1
    iget-wide v0, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->expires:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_5

    .line 344
    iget-wide v4, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->expires:J

    iget-wide v0, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->date:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_4

    iget-wide v0, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->date:J

    :goto_0
    sub-long v0, v4, v0

    .line 345
    cmp-long v3, v0, v10

    if-lez v3, :cond_2

    .line 346
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v3, v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;J)J

    .line 353
    :cond_2
    :goto_1
    const-string v0, "X-Tapjoy-Mediation-Content"

    invoke-virtual {v2, v0}, Lcom/tapjoy/TapjoyHttpURLResponse;->getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    new-instance v1, Lcom/tapjoy/mediation/TJMediatedPlacementData;

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v2}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getHttpResponse()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/mediation/TJMediatedPlacementData;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/mediation/TJMediatedPlacementData;)Lcom/tapjoy/mediation/TJMediatedPlacementData;

    .line 357
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->j(Lcom/tapjoy/TJCorePlacement;)V
    :try_end_0
    .catch Lcom/tapjoy/TapjoyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->l(Lcom/tapjoy/TJCorePlacement;)Z

    move v0, v8

    .line 443
    :goto_3
    return v0

    .line 344
    :cond_4
    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v0

    goto :goto_0

    .line 349
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0, v10, v11}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;J)J

    goto :goto_1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v1}, Lcom/tapjoy/TJCorePlacement;->f(Lcom/tapjoy/TJCorePlacement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    const-string v1, "TJPlacement.requestContent"

    invoke-static {v1}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    const-string v2, "mediation error"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 363
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement$6;->d:Lcom/tapjoy/TJPlacement;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v4, Lcom/tapjoy/TJError;

    iget-object v5, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v5}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tapjoy/TJPlacementData;->getHttpStatusCode()I

    move-result v5

    invoke-direct {v4, v5, v0}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V

    goto :goto_2

    .line 365
    :cond_6
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->d:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 366
    iget v0, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    sparse-switch v0, :sswitch_data_0

    .line 433
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    const-string v1, "content_type"

    const-string v3, "none"

    invoke-virtual {v0, v1, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    const-string v1, "code"

    iget v2, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 437
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->d:Lcom/tapjoy/TJPlacement;

    invoke-static {v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacement;)V

    goto/16 :goto_2

    .line 369
    :sswitch_0
    const-string v0, "Content-Type"

    invoke-virtual {v2, v0}, Lcom/tapjoy/TapjoyHttpURLResponse;->getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 371
    const-string v0, "X-Tapjoy-Disable-Preload"

    invoke-virtual {v2, v0}, Lcom/tapjoy/TapjoyHttpURLResponse;->getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 373
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)V

    .line 374
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    const-string v1, "content_type"

    const-string v3, "ad"

    invoke-virtual {v0, v1, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 377
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->k(Lcom/tapjoy/TJCorePlacement;)V

    .line 378
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;)V
    :try_end_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 379
    :catch_1
    move-exception v0

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v1}, Lcom/tapjoy/TJCorePlacement;->f(Lcom/tapjoy/TJCorePlacement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    const-string v1, "TJPlacement.requestContent"

    invoke-static {v1}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    const-string v3, "server error"

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 384
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement$6;->d:Lcom/tapjoy/TJPlacement;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v5, Lcom/tapjoy/TJError;

    iget v2, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    invoke-direct {v5, v2, v0}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V

    goto/16 :goto_2

    .line 388
    :cond_7
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/TJCorePlacement;->b(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)Z

    move-result v0

    .line 389
    if-eqz v0, :cond_8

    .line 390
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    const-string v1, "content_type"

    const-string v2, "mm"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 393
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->k(Lcom/tapjoy/TJCorePlacement;)V

    .line 394
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;)V

    goto/16 :goto_2

    .line 396
    :cond_8
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    const-string v1, "asset error"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 399
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->d:Lcom/tapjoy/TJPlacement;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v4, Lcom/tapjoy/TJError;

    iget v5, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    iget-object v2, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V

    goto/16 :goto_2

    .line 404
    :cond_9
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    const-string v1, "content_type"

    const-string v3, "ad"

    invoke-virtual {v0, v1, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 407
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->k(Lcom/tapjoy/TJCorePlacement;)V

    .line 409
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    new-instance v1, Lcom/tapjoy/TJCorePlacement$6$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJCorePlacement$6$1;-><init>(Lcom/tapjoy/TJCorePlacement$6;)V

    .line 10566
    sget-object v3, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Checking if there is content to cache for placement "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10828
    iget-object v5, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v5}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    .line 10566
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10569
    const-string v3, "x-tapjoy-cacheable-assets"

    invoke-virtual {v2, v3}, Lcom/tapjoy/TapjoyHttpURLResponse;->getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10572
    :try_start_2
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->canCachePlacement()Z

    move-result v3

    if-nez v3, :cond_a

    .line 10573
    sget-object v2, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Placement caching limit reached. No content will be cached for placement "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11828
    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    .line 10573
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10574
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Lcom/tapjoy/TJCacheListener;->onCachingComplete(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 10598
    :catch_2
    move-exception v0

    invoke-interface {v1, v12}, Lcom/tapjoy/TJCacheListener;->onCachingComplete(I)V

    goto/16 :goto_2

    .line 10576
    :cond_a
    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 10577
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 10578
    sget-object v2, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Begin caching content for placement "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12828
    iget-object v5, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v5}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    .line 10578
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10580
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->incrementPlacementCacheCount()V

    .line 10581
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tapjoy/TJCorePlacement;->g:Z

    .line 10584
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    new-instance v4, Lcom/tapjoy/TJCorePlacement$9;

    invoke-direct {v4, v0, v1}, Lcom/tapjoy/TJCorePlacement$9;-><init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJCacheListener;)V

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/TapjoyCache;->cacheAssetGroup(Lorg/json/JSONArray;Lcom/tapjoy/TJCacheListener;)V

    goto/16 :goto_2

    .line 10593
    :cond_b
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/tapjoy/TJCacheListener;->onCachingComplete(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 419
    :sswitch_1
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->b:Lcom/tapjoy/internal/eg;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->e:Lcom/tapjoy/internal/fd;

    .line 13068
    iget-wide v4, v1, Lcom/tapjoy/internal/fd;->e:J

    .line 419
    invoke-virtual {v0, v4, v5}, Lcom/tapjoy/internal/eg;->a(J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 420
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    const-string v1, "network error"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    const-string v1, "retry_timeout"

    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement$6;->b:Lcom/tapjoy/internal/eg;

    iget-wide v4, v3, Lcom/tapjoy/internal/eg;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 424
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->d:Lcom/tapjoy/TJPlacement;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->NETWORK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v4, Lcom/tapjoy/TJError;

    iget v5, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    iget-object v2, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V

    goto/16 :goto_2

    .line 426
    :cond_c
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement$6;->e:Lcom/tapjoy/internal/fd;

    .line 14089
    iget-wide v4, v2, Lcom/tapjoy/internal/fd;->e:J

    .line 15075
    iget-wide v0, v2, Lcom/tapjoy/internal/fd;->e:J

    long-to-double v0, v0

    iget-wide v8, v2, Lcom/tapjoy/internal/fd;->d:D

    mul-double/2addr v0, v8

    double-to-long v0, v0

    .line 15076
    iget-wide v8, v2, Lcom/tapjoy/internal/fd;->b:J

    cmp-long v3, v0, v8

    if-gez v3, :cond_f

    .line 15077
    iget-wide v0, v2, Lcom/tapjoy/internal/fd;->b:J

    .line 15081
    :cond_d
    :goto_4
    iput-wide v0, v2, Lcom/tapjoy/internal/fd;->e:J

    .line 13113
    cmp-long v0, v4, v10

    if-lez v0, :cond_e

    .line 13114
    monitor-enter v2

    .line 13116
    :try_start_4
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13119
    :goto_5
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_e
    move v0, v7

    .line 427
    goto/16 :goto_3

    .line 15078
    :cond_f
    iget-wide v8, v2, Lcom/tapjoy/internal/fd;->c:J

    cmp-long v3, v0, v8

    if-lez v3, :cond_d

    .line 15079
    iget-wide v0, v2, Lcom/tapjoy/internal/fd;->c:J

    goto :goto_4

    .line 13119
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catch_3
    move-exception v0

    goto :goto_5

    .line 366
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 307
    const-string v0, "TJPlacement.requestContent"

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->a:Lcom/tapjoy/internal/fa$a;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fa;->a(Ljava/lang/String;Lcom/tapjoy/internal/fa$a;)V

    .line 309
    const/4 v0, 0x0

    .line 310
    :goto_0
    invoke-direct {p0}, Lcom/tapjoy/TJCorePlacement$6;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v1}, Lcom/tapjoy/TJCorePlacement;->g(Lcom/tapjoy/TJCorePlacement;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "retry"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->a:Lcom/tapjoy/internal/fa$a;

    const-string v2, "retry_timeout"

    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement$6;->b:Lcom/tapjoy/internal/eg;

    iget-wide v4, v3, Lcom/tapjoy/internal/eg;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->a:Lcom/tapjoy/internal/fa$a;

    const-string v2, "retry_count"

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;J)Lcom/tapjoy/internal/fa$a;

    goto :goto_0

    .line 317
    :cond_1
    return-void
.end method
