.class public Lcom/digits/sdk/android/ContactsUploadService;
.super Landroid/app/IntentService;


# instance fields
.field private a:Lcom/digits/sdk/android/aj;

.field private b:Lcom/digits/sdk/android/ar;

.field private c:Lcom/digits/sdk/android/t;

.field private d:Lcom/digits/sdk/android/u;

.field private e:La/a/a/a/a/c/a/h;

.field private f:La/a/a/a/l;

.field private g:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 10

    const-string v0, "UPLOAD_WORKER"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->k()Lcom/digits/sdk/android/aj;

    move-result-object v1

    new-instance v2, Lcom/digits/sdk/android/t;

    invoke-direct {v2, p0}, Lcom/digits/sdk/android/t;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/digits/sdk/android/u;

    invoke-direct {v3}, Lcom/digits/sdk/android/u;-><init>()V

    new-instance v4, La/a/a/a/a/c/a/h;

    const/4 v0, 0x2

    new-instance v5, La/a/a/a/a/c/a/c;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, La/a/a/a/a/c/a/c;-><init>(I)V

    new-instance v6, La/a/a/a/a/c/a/d;

    const-wide/16 v8, 0x3e8

    invoke-direct {v6, v8, v9}, La/a/a/a/a/c/a/d;-><init>(J)V

    invoke-direct {v4, v0, v5, v6}, La/a/a/a/a/c/a/h;-><init>(ILa/a/a/a/a/c/a/f;La/a/a/a/a/c/a/b;)V

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->o()Lcom/digits/sdk/android/ar;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/digits/sdk/android/ContactsUploadService;->a(Lcom/digits/sdk/android/aj;Lcom/digits/sdk/android/t;Lcom/digits/sdk/android/u;La/a/a/a/a/c/a/h;La/a/a/a/l;Ljava/util/Locale;Lcom/digits/sdk/android/ar;)V

    return-void
.end method

.method constructor <init>(Lcom/digits/sdk/android/aj;Lcom/digits/sdk/android/t;Lcom/digits/sdk/android/u;La/a/a/a/a/c/a/h;La/a/a/a/l;Ljava/util/Locale;Lcom/digits/sdk/android/ar;)V
    .locals 1

    const-string v0, "UPLOAD_WORKER"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lcom/digits/sdk/android/ContactsUploadService;->a(Lcom/digits/sdk/android/aj;Lcom/digits/sdk/android/t;Lcom/digits/sdk/android/u;La/a/a/a/a/c/a/h;La/a/a/a/l;Ljava/util/Locale;Lcom/digits/sdk/android/ar;)V

    return-void
.end method

.method static synthetic a(Lcom/digits/sdk/android/ContactsUploadService;)Lcom/digits/sdk/android/aj;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService;->a:Lcom/digits/sdk/android/aj;

    return-object v0
.end method

.method private a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    :try_start_0
    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService;->c:Lcom/digits/sdk/android/t;

    invoke-virtual {v0}, Lcom/digits/sdk/android/t;->a()Landroid/database/Cursor;

    move-result-object v1

    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService;->c:Lcom/digits/sdk/android/t;

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/t;->a(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method static synthetic a(Lcom/digits/sdk/android/ContactsUploadService;Lcom/twitter/sdk/android/core/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/ContactsUploadService;->a(Lcom/twitter/sdk/android/core/m;)V

    return-void
.end method

.method static synthetic a(Lcom/digits/sdk/android/ContactsUploadService;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/ContactsUploadService;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Lcom/digits/sdk/android/aj;Lcom/digits/sdk/android/t;Lcom/digits/sdk/android/u;La/a/a/a/a/c/a/h;La/a/a/a/l;Ljava/util/Locale;Lcom/digits/sdk/android/ar;)V
    .locals 1

    iput-object p1, p0, Lcom/digits/sdk/android/ContactsUploadService;->a:Lcom/digits/sdk/android/aj;

    iput-object p2, p0, Lcom/digits/sdk/android/ContactsUploadService;->c:Lcom/digits/sdk/android/t;

    iput-object p3, p0, Lcom/digits/sdk/android/ContactsUploadService;->d:Lcom/digits/sdk/android/u;

    iput-object p4, p0, Lcom/digits/sdk/android/ContactsUploadService;->e:La/a/a/a/a/c/a/h;

    iput-object p5, p0, Lcom/digits/sdk/android/ContactsUploadService;->f:La/a/a/a/l;

    iput-object p6, p0, Lcom/digits/sdk/android/ContactsUploadService;->g:Ljava/util/Locale;

    iput-object p7, p0, Lcom/digits/sdk/android/ContactsUploadService;->b:Lcom/digits/sdk/android/ar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/ContactsUploadService;->setIntentRedelivery(Z)V

    return-void
.end method

.method private a(Lcom/twitter/sdk/android/core/m;)V
    .locals 7

    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService;->f:La/a/a/a/l;

    const-string v1, "Digits"

    iget-object v2, p0, Lcom/digits/sdk/android/ContactsUploadService;->g:Ljava/util/Locale;

    const-string v3, "contact upload error, status=%d, errorCode=%d, errorMessage=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/m;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/m;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/m;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 7

    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService;->f:La/a/a/a/l;

    const-string v1, "Digits"

    iget-object v2, p0, Lcom/digits/sdk/android/ContactsUploadService;->g:Ljava/util/Locale;

    const-string v3, "contact upload error, exception=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x64

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method a(Lcom/digits/sdk/android/ContactsUploadFailureResult;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.digits.sdk.android.UPLOAD_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.digits.sdk.android.UPLOAD_FAILED_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/ContactsUploadService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method a(Lcom/digits/sdk/android/models/ContactsUploadResult;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.digits.sdk.android.UPLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.digits.sdk.android.UPLOAD_COMPLETE_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/ContactsUploadService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService;->d:Lcom/digits/sdk/android/u;

    invoke-virtual {v0}, Lcom/digits/sdk/android/u;->a()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    :try_start_0
    invoke-direct {p0}, Lcom/digits/sdk/android/ContactsUploadService;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/digits/sdk/android/ContactsUploadService;->a(I)I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    :goto_0
    if-ge v2, v4, :cond_0

    mul-int/lit8 v6, v2, 0x64

    add-int/lit8 v7, v6, 0x64

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-interface {v0, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/digits/sdk/android/models/j;

    invoke-direct {v7, v6}, Lcom/digits/sdk/android/models/j;-><init>(Ljava/util/List;)V

    iget-object v6, p0, Lcom/digits/sdk/android/ContactsUploadService;->e:La/a/a/a/a/c/a/h;

    new-instance v8, Lcom/digits/sdk/android/ContactsUploadService$1;

    invoke-direct {v8, p0, v7, v5, v3}, Lcom/digits/sdk/android/ContactsUploadService$1;-><init>(Lcom/digits/sdk/android/ContactsUploadService;Lcom/digits/sdk/android/models/j;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v6, v8}, La/a/a/a/a/c/a/h;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService;->e:La/a/a/a/a/c/a/h;

    invoke-virtual {v0}, La/a/a/a/a/c/a/h;->shutdown()V

    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService;->e:La/a/a/a/a/c/a/h;

    const-wide/16 v6, 0x12c

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v2}, La/a/a/a/a/c/a/h;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService;->d:Lcom/digits/sdk/android/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/digits/sdk/android/u;->a(J)V

    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService;->d:Lcom/digits/sdk/android/u;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/digits/sdk/android/u;->a(I)V

    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService;->b:Lcom/digits/sdk/android/ar;

    new-instance v2, Lcom/digits/sdk/android/a/e;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-direct {v2, v1, v4}, Lcom/digits/sdk/android/a/e;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/digits/sdk/android/ar;->a(Lcom/digits/sdk/android/a/e;)V

    new-instance v0, Lcom/digits/sdk/android/models/ContactsUploadResult;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/digits/sdk/android/models/ContactsUploadResult;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/ContactsUploadService;->a(Lcom/digits/sdk/android/models/ContactsUploadResult;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int v2, v1, v2

    iget-object v4, p0, Lcom/digits/sdk/android/ContactsUploadService;->b:Lcom/digits/sdk/android/ar;

    new-instance v6, Lcom/digits/sdk/android/a/d;

    invoke-direct {v6, v1, v2}, Lcom/digits/sdk/android/a/d;-><init>(II)V

    invoke-virtual {v4, v6}, Lcom/digits/sdk/android/ar;->a(Lcom/digits/sdk/android/a/d;)V

    if-nez v1, :cond_3

    new-instance v0, Lcom/digits/sdk/android/ContactsUploadFailureResult;

    sget-object v2, Lcom/digits/sdk/android/ContactsUploadFailureResult$a;->g:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    invoke-direct {v0, v2}, Lcom/digits/sdk/android/ContactsUploadFailureResult;-><init>(Lcom/digits/sdk/android/ContactsUploadFailureResult$a;)V

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/ContactsUploadService;->a(Lcom/digits/sdk/android/ContactsUploadFailureResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/digits/sdk/android/ContactsUploadService;->a(Ljava/lang/Exception;)V

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/digits/sdk/android/ContactsUploadService;->b:Lcom/digits/sdk/android/ar;

    new-instance v4, Lcom/digits/sdk/android/a/d;

    invoke-direct {v4, v1, v2}, Lcom/digits/sdk/android/a/d;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/digits/sdk/android/ar;->a(Lcom/digits/sdk/android/a/d;)V

    invoke-static {v0}, Lcom/digits/sdk/android/ContactsUploadFailureResult;->a(Ljava/lang/Exception;)Lcom/digits/sdk/android/ContactsUploadFailureResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/ContactsUploadService;->a(Lcom/digits/sdk/android/ContactsUploadFailureResult;)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadService;->e:La/a/a/a/a/c/a/h;

    invoke-virtual {v0}, La/a/a/a/a/c/a/h;->shutdownNow()Ljava/util/List;

    invoke-static {v5}, Lcom/digits/sdk/android/ContactsUploadFailureResult;->a(Ljava/util/List;)Lcom/digits/sdk/android/ContactsUploadFailureResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/ContactsUploadService;->a(Lcom/digits/sdk/android/ContactsUploadFailureResult;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v5}, Lcom/digits/sdk/android/ContactsUploadFailureResult;->a(Ljava/util/List;)Lcom/digits/sdk/android/ContactsUploadFailureResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/ContactsUploadService;->a(Lcom/digits/sdk/android/ContactsUploadFailureResult;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method
