.class public Lcom/android/volley/toolbox/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/h$a;,
        Lcom/android/volley/toolbox/h$c;,
        Lcom/android/volley/toolbox/h$d;,
        Lcom/android/volley/toolbox/h$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/volley/m;

.field private b:I

.field private final c:Lcom/android/volley/toolbox/h$b;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/volley/m;Lcom/android/volley/toolbox/h$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/volley/toolbox/h;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/h;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/h;->e:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/h;->f:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/volley/toolbox/h;->a:Lcom/android/volley/m;

    iput-object p2, p0, Lcom/android/volley/toolbox/h;->c:Lcom/android/volley/toolbox/h$b;

    return-void
.end method

.method static synthetic a(Lcom/android/volley/toolbox/h;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/volley/toolbox/h;->g:Ljava/lang/Runnable;

    return-object p1
.end method

.method private static a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/volley/toolbox/h;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/h;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/android/volley/toolbox/h$a;)V
    .locals 4

    iget-object v0, p0, Lcom/android/volley/toolbox/h;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/volley/toolbox/h;->g:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/volley/toolbox/h$3;

    invoke-direct {v0, p0}, Lcom/android/volley/toolbox/h$3;-><init>(Lcom/android/volley/toolbox/h;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/h;->g:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/volley/toolbox/h;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/volley/toolbox/h;->g:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/volley/toolbox/h;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/volley/toolbox/h;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/h;->e:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/android/volley/l;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/volley/toolbox/i;

    new-instance v2, Lcom/android/volley/toolbox/h$1;

    invoke-direct {v2, p0, p5}, Lcom/android/volley/toolbox/h$1;-><init>(Lcom/android/volley/toolbox/h;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v7, Lcom/android/volley/toolbox/h$2;

    invoke-direct {v7, p0, p5}, Lcom/android/volley/toolbox/h$2;-><init>(Lcom/android/volley/toolbox/h;Ljava/lang/String;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/volley/toolbox/i;-><init>(Ljava/lang/String;Lcom/android/volley/n$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/n$a;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/android/volley/toolbox/h$d;IILandroid/widget/ImageView$ScaleType;)Lcom/android/volley/toolbox/h$c;
    .locals 14

    invoke-direct {p0}, Lcom/android/volley/toolbox/h;->a()V

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {p1, v0, v1, v2}, Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/android/volley/toolbox/h;->c:Lcom/android/volley/toolbox/h$b;

    invoke-interface {v3, v7}, Lcom/android/volley/toolbox/h$b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v3, Lcom/android/volley/toolbox/h$c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/volley/toolbox/h$c;-><init>(Lcom/android/volley/toolbox/h;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/h$d;)V

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/android/volley/toolbox/h$d;->a(Lcom/android/volley/toolbox/h$c;Z)V

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lcom/android/volley/toolbox/h$c;

    const/4 v5, 0x0

    move-object v4, p0

    move-object v6, p1

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/volley/toolbox/h$c;-><init>(Lcom/android/volley/toolbox/h;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/h$d;)V

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/android/volley/toolbox/h$d;->a(Lcom/android/volley/toolbox/h$c;Z)V

    iget-object v4, p0, Lcom/android/volley/toolbox/h;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/volley/toolbox/h$a;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Lcom/android/volley/toolbox/h$a;->a(Lcom/android/volley/toolbox/h$c;)V

    goto :goto_0

    :cond_1
    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/android/volley/l;

    move-result-object v4

    iget-object v5, p0, Lcom/android/volley/toolbox/h;->a:Lcom/android/volley/m;

    invoke-virtual {v5, v4}, Lcom/android/volley/m;->a(Lcom/android/volley/l;)Lcom/android/volley/l;

    iget-object v5, p0, Lcom/android/volley/toolbox/h;->d:Ljava/util/HashMap;

    new-instance v6, Lcom/android/volley/toolbox/h$a;

    invoke-direct {v6, p0, v4, v3}, Lcom/android/volley/toolbox/h$a;-><init>(Lcom/android/volley/toolbox/h;Lcom/android/volley/l;Lcom/android/volley/toolbox/h$c;)V

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/h;->c:Lcom/android/volley/toolbox/h$b;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/toolbox/h$b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/volley/toolbox/h;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/h$a;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/android/volley/toolbox/h$a;->a(Lcom/android/volley/toolbox/h$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;Lcom/android/volley/toolbox/h$a;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/android/volley/s;)V
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/h;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/h$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/volley/toolbox/h$a;->a(Lcom/android/volley/s;)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;Lcom/android/volley/toolbox/h$a;)V

    :cond_0
    return-void
.end method
