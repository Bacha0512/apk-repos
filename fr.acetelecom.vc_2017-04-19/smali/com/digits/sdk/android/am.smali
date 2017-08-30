.class public Lcom/digits/sdk/android/am;
.super Landroid/content/AsyncTaskLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/digits/sdk/android/al;",
        ">;"
    }
.end annotation


# static fields
.field static final a:[Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field static final b:Ljava/lang/String;


# instance fields
.field final c:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/digits/sdk/android/al;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/digits/sdk/android/models/DigitsUser;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/digits/sdk/android/models/Invite;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/digits/sdk/android/al;

.field g:Landroid/net/Uri;

.field h:[Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:[Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Landroid/os/CancellationSignal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/digits/sdk/android/al;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/digits/sdk/android/al;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/digits/sdk/android/am;->a:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/digits/sdk/android/al;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>\'\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "in_visible_group"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/digits/sdk/android/al;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>\'\' AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is null OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <> \'com.whatsapp\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digits/sdk/android/am;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/digits/sdk/android/am;->a:[Ljava/lang/String;

    sget-object v4, Lcom/digits/sdk/android/am;->b:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    sget-object v6, Lcom/digits/sdk/android/al;->b:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/digits/sdk/android/am;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/digits/sdk/android/models/DigitsUser;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/digits/sdk/android/am;->c:Landroid/content/Loader$ForceLoadContentObserver;

    iput-object p2, p0, Lcom/digits/sdk/android/am;->g:Landroid/net/Uri;

    iput-object p3, p0, Lcom/digits/sdk/android/am;->h:[Ljava/lang/String;

    iput-object p4, p0, Lcom/digits/sdk/android/am;->i:Ljava/lang/String;

    iput-object p5, p0, Lcom/digits/sdk/android/am;->j:[Ljava/lang/String;

    iput-object p6, p0, Lcom/digits/sdk/android/am;->k:Ljava/lang/String;

    iput-object p7, p0, Lcom/digits/sdk/android/am;->d:Ljava/util/List;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-ge v0, p1, :cond_1

    const-string v2, ",?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    array-length v0, p1

    array-length v1, p2

    add-int v2, v0, v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private b()[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/digits/sdk/android/am;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/digits/sdk/android/am;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/models/DigitsUser;

    iget-object v0, v0, Lcom/digits/sdk/android/models/DigitsUser;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/digits/sdk/android/al;
    .locals 10

    const/16 v9, 0x10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/digits/sdk/android/am;->isLoadInBackgroundCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/digits/sdk/android/am;->l:Landroid/os/CancellationSignal;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/digits/sdk/android/am;->d:Ljava/util/List;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/digits/sdk/android/am;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/digits/sdk/android/al;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/digits/sdk/android/am;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/digits/sdk/android/am;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/digits/sdk/android/al;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT IN ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/digits/sdk/android/am;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/digits/sdk/android/am;->j:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/digits/sdk/android/am;->b()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/digits/sdk/android/am;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :try_start_2
    invoke-virtual {p0}, Lcom/digits/sdk/android/am;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_6

    iget-object v1, p0, Lcom/digits/sdk/android/am;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/digits/sdk/android/am;->h:[Ljava/lang/String;

    iget-object v5, p0, Lcom/digits/sdk/android/am;->k:Ljava/lang/String;

    iget-object v6, p0, Lcom/digits/sdk/android/am;->l:Landroid/os/CancellationSignal;

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    iget-object v1, p0, Lcom/digits/sdk/android/am;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/digits/sdk/android/am;->h:[Ljava/lang/String;

    iget-object v5, p0, Lcom/digits/sdk/android/am;->k:Ljava/lang/String;

    iget-object v6, p0, Lcom/digits/sdk/android/am;->l:Landroid/os/CancellationSignal;

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    move-object v1, v7

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    iget-object v0, p0, Lcom/digits/sdk/android/am;->c:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/digits/sdk/android/am;->c:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :try_start_4
    new-instance v0, Lcom/digits/sdk/android/al;

    iget-object v3, p0, Lcom/digits/sdk/android/am;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/digits/sdk/android/am;->e:Ljava/util/List;

    iget-object v5, p0, Lcom/digits/sdk/android/am;->h:[Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/digits/sdk/android/al;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Lcom/digits/sdk/android/am;->l:Landroid/os/CancellationSignal;

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/digits/sdk/android/am;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto/16 :goto_0

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/digits/sdk/android/am;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/digits/sdk/android/am;->h:[Ljava/lang/String;

    iget-object v5, p0, Lcom/digits/sdk/android/am;->k:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    iget-object v1, p0, Lcom/digits/sdk/android/am;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/digits/sdk/android/am;->h:[Ljava/lang/String;

    iget-object v5, p0, Lcom/digits/sdk/android/am;->k:Ljava/lang/String;

    move-object v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v6

    goto :goto_1

    :catch_0
    move-exception v0

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_9

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_7
    iput-object v1, p0, Lcom/digits/sdk/android/am;->l:Landroid/os/CancellationSignal;

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_9
    throw v0

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/am;->g:Landroid/net/Uri;

    return-void
.end method

.method public a(Lcom/digits/sdk/android/al;)V
    .locals 2

    invoke-virtual {p0}, Lcom/digits/sdk/android/am;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/digits/sdk/android/al;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/digits/sdk/android/am;->f:Lcom/digits/sdk/android/al;

    iput-object p1, p0, Lcom/digits/sdk/android/am;->f:Lcom/digits/sdk/android/al;

    invoke-virtual {p0}, Lcom/digits/sdk/android/am;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/digits/sdk/android/models/DigitsUser;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/digits/sdk/android/am;->d:Ljava/util/List;

    return-void
.end method

.method public b(Lcom/digits/sdk/android/al;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/digits/sdk/android/al;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/digits/sdk/android/al;->close()V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/digits/sdk/android/models/Invite;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/digits/sdk/android/am;->e:Ljava/util/List;

    return-void
.end method

.method public cancelLoadInBackground()V
    .locals 2

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->cancelLoadInBackground()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/digits/sdk/android/am;->l:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/am;->l:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    monitor-exit p0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/digits/sdk/android/al;

    invoke-virtual {p0, p1}, Lcom/digits/sdk/android/am;->a(Lcom/digits/sdk/android/al;)V

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/digits/sdk/android/am;->a()Lcom/digits/sdk/android/al;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/digits/sdk/android/al;

    invoke-virtual {p0, p1}, Lcom/digits/sdk/android/am;->b(Lcom/digits/sdk/android/al;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/digits/sdk/android/am;->onStopLoading()V

    iget-object v0, p0, Lcom/digits/sdk/android/am;->f:Lcom/digits/sdk/android/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/am;->f:Lcom/digits/sdk/android/al;

    invoke-virtual {v0}, Lcom/digits/sdk/android/al;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/am;->f:Lcom/digits/sdk/android/al;

    invoke-virtual {v0}, Lcom/digits/sdk/android/al;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/digits/sdk/android/am;->f:Lcom/digits/sdk/android/al;

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/am;->f:Lcom/digits/sdk/android/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/am;->f:Lcom/digits/sdk/android/al;

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/am;->a(Lcom/digits/sdk/android/al;)V

    :cond_0
    invoke-virtual {p0}, Lcom/digits/sdk/android/am;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/digits/sdk/android/am;->f:Lcom/digits/sdk/android/al;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/digits/sdk/android/am;->forceLoad()V

    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/digits/sdk/android/am;->cancelLoad()Z

    return-void
.end method
