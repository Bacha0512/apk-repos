.class public final Lb/p;
.super Lb/aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/p$a;
    }
.end annotation


# static fields
.field private static final a:Lb/u;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lb/u;->a(Ljava/lang/String;)Lb/u;

    move-result-object v0

    sput-object v0, Lb/p;->a:Lb/u;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lb/aa;-><init>()V

    invoke-static {p1}, Lb/a/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/p;->b:Ljava/util/List;

    invoke-static {p2}, Lb/a/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/p;->c:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lb/p$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/p;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private a(Lc/d;Z)J
    .locals 6

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_1

    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    iget-object v4, p0, Lb/p;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    :goto_1
    if-ge v4, v5, :cond_2

    if-lez v4, :cond_0

    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Lc/c;->b(I)Lc/c;

    :cond_0
    iget-object v0, p0, Lb/p;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lc/c;->a(Ljava/lang/String;)Lc/c;

    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Lc/c;->b(I)Lc/c;

    iget-object v0, p0, Lb/p;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lc/c;->a(Ljava/lang/String;)Lc/c;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lc/d;->c()Lc/c;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v1}, Lc/c;->b()J

    move-result-wide v2

    invoke-virtual {v1}, Lc/c;->t()V

    :cond_3
    move-wide v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lb/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Lc/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/p;->a(Lc/d;Z)J

    return-void
.end method

.method public b()Lb/u;
    .locals 1

    sget-object v0, Lb/p;->a:Lb/u;

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/p;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lb/p;->a(Lc/d;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lb/p;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/s;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
