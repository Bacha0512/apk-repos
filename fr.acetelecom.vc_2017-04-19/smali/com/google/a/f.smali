.class public final Lcom/google/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/f$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/a/j;

.field final b:Lcom/google/a/r;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/a/c/a",
            "<*>;",
            "Lcom/google/a/f$a",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/a/c/a",
            "<*>;",
            "Lcom/google/a/w",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/a/x;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/a/b/c;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v4, 0x0

    sget-object v1, Lcom/google/a/b/d;->a:Lcom/google/a/b/d;

    sget-object v2, Lcom/google/a/d;->a:Lcom/google/a/d;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v11, Lcom/google/a/u;->a:Lcom/google/a/u;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    move v10, v4

    invoke-direct/range {v0 .. v12}, Lcom/google/a/f;-><init>(Lcom/google/a/b/d;Lcom/google/a/e;Ljava/util/Map;ZZZZZZZLcom/google/a/u;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/google/a/b/d;Lcom/google/a/e;Ljava/util/Map;ZZZZZZZLcom/google/a/u;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/d;",
            "Lcom/google/a/e;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/a/h",
            "<*>;>;ZZZZZZZ",
            "Lcom/google/a/u;",
            "Ljava/util/List",
            "<",
            "Lcom/google/a/x;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/google/a/f;->c:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/a/f;->d:Ljava/util/Map;

    new-instance v1, Lcom/google/a/f$1;

    invoke-direct {v1, p0}, Lcom/google/a/f$1;-><init>(Lcom/google/a/f;)V

    iput-object v1, p0, Lcom/google/a/f;->a:Lcom/google/a/j;

    new-instance v1, Lcom/google/a/f$2;

    invoke-direct {v1, p0}, Lcom/google/a/f$2;-><init>(Lcom/google/a/f;)V

    iput-object v1, p0, Lcom/google/a/f;->b:Lcom/google/a/r;

    new-instance v1, Lcom/google/a/b/c;

    invoke-direct {v1, p3}, Lcom/google/a/b/c;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/google/a/f;->f:Lcom/google/a/b/c;

    iput-boolean p4, p0, Lcom/google/a/f;->g:Z

    iput-boolean p6, p0, Lcom/google/a/f;->i:Z

    iput-boolean p7, p0, Lcom/google/a/f;->h:Z

    iput-boolean p8, p0, Lcom/google/a/f;->j:Z

    iput-boolean p9, p0, Lcom/google/a/f;->k:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/google/a/b/a/m;->Y:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/h;->a:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p12

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/google/a/b/a/m;->D:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->m:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->g:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->i:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->k:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p11 .. p11}, Lcom/google/a/f;->a(Lcom/google/a/u;)Lcom/google/a/w;

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    invoke-static {v3, v4, v2}, Lcom/google/a/b/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/a/w;)Lcom/google/a/x;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/google/a/f;->a(Z)Lcom/google/a/w;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/a/b/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/a/w;)Lcom/google/a/x;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/google/a/f;->b(Z)Lcom/google/a/w;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/a/b/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/a/w;)Lcom/google/a/x;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/a/b/a/m;->x:Lcom/google/a/x;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/a/b/a/m;->o:Lcom/google/a/x;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/a/b/a/m;->q:Lcom/google/a/x;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2}, Lcom/google/a/f;->a(Lcom/google/a/w;)Lcom/google/a/w;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/a/b/a/m;->a(Ljava/lang/Class;Lcom/google/a/w;)Lcom/google/a/x;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v2}, Lcom/google/a/f;->b(Lcom/google/a/w;)Lcom/google/a/w;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/a/b/a/m;->a(Ljava/lang/Class;Lcom/google/a/w;)Lcom/google/a/x;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->s:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->z:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->F:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->H:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/math/BigDecimal;

    sget-object v3, Lcom/google/a/b/a/m;->B:Lcom/google/a/w;

    invoke-static {v2, v3}, Lcom/google/a/b/a/m;->a(Ljava/lang/Class;Lcom/google/a/w;)Lcom/google/a/x;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/math/BigInteger;

    sget-object v3, Lcom/google/a/b/a/m;->C:Lcom/google/a/w;

    invoke-static {v2, v3}, Lcom/google/a/b/a/m;->a(Ljava/lang/Class;Lcom/google/a/w;)Lcom/google/a/x;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->J:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->L:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->P:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->R:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->W:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->N:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->d:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/c;->a:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->U:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/k;->a:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/j;->a:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->S:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/a;->a:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->b:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/a/b/a/b;

    iget-object v3, p0, Lcom/google/a/f;->f:Lcom/google/a/b/c;

    invoke-direct {v2, v3}, Lcom/google/a/b/a/b;-><init>(Lcom/google/a/b/c;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/a/b/a/g;

    iget-object v3, p0, Lcom/google/a/f;->f:Lcom/google/a/b/c;

    invoke-direct {v2, v3, p5}, Lcom/google/a/b/a/g;-><init>(Lcom/google/a/b/c;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/a/b/a/d;

    iget-object v3, p0, Lcom/google/a/f;->f:Lcom/google/a/b/c;

    invoke-direct {v2, v3}, Lcom/google/a/b/a/d;-><init>(Lcom/google/a/b/c;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/m;->Z:Lcom/google/a/x;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/a/b/a/i;

    iget-object v3, p0, Lcom/google/a/f;->f:Lcom/google/a/b/c;

    invoke-direct {v2, v3, p2, p1}, Lcom/google/a/b/a/i;-><init>(Lcom/google/a/b/c;Lcom/google/a/e;Lcom/google/a/b/d;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/a/f;->e:Ljava/util/List;

    return-void
.end method

.method private static a(Lcom/google/a/u;)Lcom/google/a/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/u;",
            ")",
            "Lcom/google/a/w",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/a/u;->a:Lcom/google/a/u;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/google/a/b/a/m;->t:Lcom/google/a/w;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/f$5;

    invoke-direct {v0}, Lcom/google/a/f$5;-><init>()V

    goto :goto_0
.end method

.method private static a(Lcom/google/a/w;)Lcom/google/a/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/w",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/a/w",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/f$6;

    invoke-direct {v0, p0}, Lcom/google/a/f$6;-><init>(Lcom/google/a/w;)V

    invoke-virtual {v0}, Lcom/google/a/f$6;->a()Lcom/google/a/w;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Lcom/google/a/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/a/w",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/a/b/a/m;->v:Lcom/google/a/w;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/f$3;

    invoke-direct {v0, p0}, Lcom/google/a/f$3;-><init>(Lcom/google/a/f;)V

    goto :goto_0
.end method

.method static a(D)V
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/google/a/d/a;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d/a;->f()Lcom/google/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/a/d/b;->j:Lcom/google/a/d/b;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/a/m;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/a/m;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/a/d/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/a/t;

    invoke-direct {v1, v0}, Lcom/google/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/a/m;

    invoke-direct {v1, v0}, Lcom/google/a/m;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method private static b(Lcom/google/a/w;)Lcom/google/a/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/w",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/a/w",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/f$7;

    invoke-direct {v0, p0}, Lcom/google/a/f$7;-><init>(Lcom/google/a/w;)V

    invoke-virtual {v0}, Lcom/google/a/f$7;->a()Lcom/google/a/w;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)Lcom/google/a/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/a/w",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/a/b/a/m;->u:Lcom/google/a/w;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/f$4;

    invoke-direct {v0, p0}, Lcom/google/a/f$4;-><init>(Lcom/google/a/f;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/Reader;)Lcom/google/a/d/a;
    .locals 2

    new-instance v0, Lcom/google/a/d/a;

    invoke-direct {v0, p1}, Lcom/google/a/d/a;-><init>(Ljava/io/Reader;)V

    iget-boolean v1, p0, Lcom/google/a/f;->k:Z

    invoke-virtual {v0, v1}, Lcom/google/a/d/a;->a(Z)V

    return-object v0
.end method

.method public a(Ljava/io/Writer;)Lcom/google/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/a/f;->i:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/google/a/d/c;

    invoke-direct {v0, p1}, Lcom/google/a/d/c;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lcom/google/a/f;->j:Z

    if-eqz v1, :cond_1

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/a/d/c;->c(Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/google/a/f;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/a/d/c;->d(Z)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/a/l;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/a/n;->a:Lcom/google/a/n;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/a/l;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/a/l;
    .locals 1

    new-instance v0, Lcom/google/a/b/a/f;

    invoke-direct {v0}, Lcom/google/a/b/a/f;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/a/d/c;)V

    invoke-virtual {v0}, Lcom/google/a/b/a/f;->a()Lcom/google/a/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/c/a;)Lcom/google/a/w;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/c/a",
            "<TT;>;)",
            "Lcom/google/a/w",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/w;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/a/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/a/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/f$a;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v3, Lcom/google/a/f$a;

    invoke-direct {v3}, Lcom/google/a/f$a;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/a/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/x;

    invoke-interface {v0, p0, p1}, Lcom/google/a/x;->a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/w;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Lcom/google/a/f$a;->a(Lcom/google/a/w;)V

    iget-object v3, p0, Lcom/google/a/f;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/a/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/a/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public a(Lcom/google/a/x;Lcom/google/a/c/a;)Lcom/google/a/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/x;",
            "Lcom/google/a/c/a",
            "<TT;>;)",
            "Lcom/google/a/w",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/a/f;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/google/a/f;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/x;

    if-nez v2, :cond_2

    if-ne v0, p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0, p0, p2}, Lcom/google/a/x;->a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/w;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSON cannot serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Class;)Lcom/google/a/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/a/w",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/a/c/a;->b(Ljava/lang/Class;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/f;->a(Lcom/google/a/c/a;)Lcom/google/a/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/t;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/a/d/a;->p()Z

    move-result v2

    invoke-virtual {p1, v1}, Lcom/google/a/d/a;->a(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d/a;->f()Lcom/google/a/d/b;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/google/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/f;->a(Lcom/google/a/c/a;)Lcom/google/a/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/w;->a(Lcom/google/a/d/a;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/google/a/d/a;->a(Z)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v2}, Lcom/google/a/d/a;->a(Z)V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/a/t;

    invoke-direct {v1, v0}, Lcom/google/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/google/a/d/a;->a(Z)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/google/a/t;

    invoke-direct {v1, v0}, Lcom/google/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/a/t;

    invoke-direct {v1, v0}, Lcom/google/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public a(Lcom/google/a/l;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/l;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/t;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/a/f;->a(Lcom/google/a/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/google/a/b/i;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/l;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/t;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/b/a/e;

    invoke-direct {v0, p1}, Lcom/google/a/b/a/e;-><init>(Lcom/google/a/l;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/a/f;->a(Lcom/google/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/t;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/a/f;->a(Ljava/io/Reader;)Lcom/google/a/d/a;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/a/f;->a(Lcom/google/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/a/f;->a(Ljava/lang/Object;Lcom/google/a/d/a;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/t;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/a/f;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/google/a/b/i;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/t;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/a/f;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/google/a/l;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/a/f;->a(Lcom/google/a/l;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/l;Lcom/google/a/d/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/a/d/c;->g()Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/a/d/c;->b(Z)V

    invoke-virtual {p2}, Lcom/google/a/d/c;->h()Z

    move-result v2

    iget-boolean v0, p0, Lcom/google/a/f;->h:Z

    invoke-virtual {p2, v0}, Lcom/google/a/d/c;->c(Z)V

    invoke-virtual {p2}, Lcom/google/a/d/c;->i()Z

    move-result v3

    iget-boolean v0, p0, Lcom/google/a/f;->g:Z

    invoke-virtual {p2, v0}, Lcom/google/a/d/c;->d(Z)V

    :try_start_0
    invoke-static {p1, p2}, Lcom/google/a/b/j;->a(Lcom/google/a/l;Lcom/google/a/d/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v1}, Lcom/google/a/d/c;->b(Z)V

    invoke-virtual {p2, v2}, Lcom/google/a/d/c;->c(Z)V

    invoke-virtual {p2, v3}, Lcom/google/a/d/c;->d(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v4, Lcom/google/a/m;

    invoke-direct {v4, v0}, Lcom/google/a/m;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/google/a/d/c;->b(Z)V

    invoke-virtual {p2, v2}, Lcom/google/a/d/c;->c(Z)V

    invoke-virtual {p2, v3}, Lcom/google/a/d/c;->d(Z)V

    throw v0
.end method

.method public a(Lcom/google/a/l;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/google/a/b/j;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/f;->a(Ljava/io/Writer;)Lcom/google/a/d/c;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/f;->a(Lcom/google/a/l;Lcom/google/a/d/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/a/d/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/f;->a(Lcom/google/a/c/a;)Lcom/google/a/w;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/a/d/c;->g()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/google/a/d/c;->b(Z)V

    invoke-virtual {p3}, Lcom/google/a/d/c;->h()Z

    move-result v2

    iget-boolean v3, p0, Lcom/google/a/f;->h:Z

    invoke-virtual {p3, v3}, Lcom/google/a/d/c;->c(Z)V

    invoke-virtual {p3}, Lcom/google/a/d/c;->i()Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/a/f;->g:Z

    invoke-virtual {p3, v4}, Lcom/google/a/d/c;->d(Z)V

    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/google/a/w;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v1}, Lcom/google/a/d/c;->b(Z)V

    invoke-virtual {p3, v2}, Lcom/google/a/d/c;->c(Z)V

    invoke-virtual {p3, v3}, Lcom/google/a/d/c;->d(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v4, Lcom/google/a/m;

    invoke-direct {v4, v0}, Lcom/google/a/m;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p3, v1}, Lcom/google/a/d/c;->b(Z)V

    invoke-virtual {p3, v2}, Lcom/google/a/d/c;->c(Z)V

    invoke-virtual {p3, v3}, Lcom/google/a/d/c;->d(Z)V

    throw v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lcom/google/a/b/j;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/f;->a(Ljava/io/Writer;)Lcom/google/a/d/c;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/a/d/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/a/m;

    invoke-direct {v1, v0}, Lcom/google/a/m;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/a/n;->a:Lcom/google/a/n;

    invoke-virtual {p0, v0}, Lcom/google/a/f;->a(Lcom/google/a/l;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/f;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/a/f;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/f;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/f;->f:Lcom/google/a/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
