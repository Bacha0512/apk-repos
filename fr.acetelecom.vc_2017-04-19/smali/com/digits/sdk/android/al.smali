.class public Lcom/digits/sdk/android/al;
.super Landroid/database/MergeCursor;


# static fields
.field public static final a:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field static final b:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/digits/sdk/android/models/DigitsUser;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/digits/sdk/android/models/Invite;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/database/Cursor;

.field public final f:Landroid/database/Cursor;

.field public final g:I

.field private final h:I

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const-string v0, "data4"

    :goto_0
    sput-object v0, Lcom/digits/sdk/android/al;->a:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    const-string v0, "display_name"

    :goto_1
    sput-object v0, Lcom/digits/sdk/android/al;->b:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "data1"

    goto :goto_0

    :cond_1
    const-string v0, "display_name"

    goto :goto_1
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/digits/sdk/android/models/DigitsUser;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/digits/sdk/android/models/Invite;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    iput-object p1, p0, Lcom/digits/sdk/android/al;->e:Landroid/database/Cursor;

    iput-object p2, p0, Lcom/digits/sdk/android/al;->f:Landroid/database/Cursor;

    if-eqz p3, :cond_2

    invoke-direct {p0, p3}, Lcom/digits/sdk/android/al;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/digits/sdk/android/al;->c:Ljava/util/Map;

    if-eqz p4, :cond_3

    invoke-direct {p0, p4}, Lcom/digits/sdk/android/al;->b(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/digits/sdk/android/al;->d:Ljava/util/Map;

    sget-object v0, Lcom/digits/sdk/android/al;->b:Ljava/lang/String;

    invoke-direct {p0, p5, v0}, Lcom/digits/sdk/android/al;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/digits/sdk/android/al;->g:I

    const-string v0, "photo_thumb_uri"

    invoke-direct {p0, p5, v0}, Lcom/digits/sdk/android/al;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/digits/sdk/android/al;->h:I

    sget-object v0, Lcom/digits/sdk/android/al;->a:Ljava/lang/String;

    invoke-direct {p0, p5, v0}, Lcom/digits/sdk/android/al;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/digits/sdk/android/al;->i:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/al;->e:Landroid/database/Cursor;

    sget-object v1, Lcom/digits/sdk/android/al;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/digits/sdk/android/al;->f:Landroid/database/Cursor;

    sget-object v1, Lcom/digits/sdk/android/al;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_1
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private a(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/digits/sdk/android/models/DigitsUser;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/digits/sdk/android/models/DigitsUser;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/models/DigitsUser;

    iget-object v3, v0, Lcom/digits/sdk/android/models/DigitsUser;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/digits/sdk/android/models/Invite;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/digits/sdk/android/models/Invite;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/models/Invite;

    iget-object v3, v0, Lcom/digits/sdk/android/models/Invite;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/digits/sdk/android/al;->i:I

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/al;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/digits/sdk/android/models/Invite$Status;
    .locals 2

    invoke-virtual {p0}, Lcom/digits/sdk/android/al;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/digits/sdk/android/al;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/models/Invite;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/digits/sdk/android/models/Invite;->b:Lcom/digits/sdk/android/models/Invite$Status;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
