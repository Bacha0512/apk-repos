.class public final Lb/v;
.super Lb/aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/v$a;,
        Lb/v$b;
    }
.end annotation


# static fields
.field public static final a:Lb/u;

.field public static final b:Lb/u;

.field public static final c:Lb/u;

.field public static final d:Lb/u;

.field public static final e:Lb/u;

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B


# instance fields
.field private final i:Lc/f;

.field private final j:Lb/u;

.field private final k:Lb/u;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/v$b;",
            ">;"
        }
    .end annotation
.end field

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lb/u;->a(Ljava/lang/String;)Lb/u;

    move-result-object v0

    sput-object v0, Lb/v;->a:Lb/u;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lb/u;->a(Ljava/lang/String;)Lb/u;

    move-result-object v0

    sput-object v0, Lb/v;->b:Lb/u;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lb/u;->a(Ljava/lang/String;)Lb/u;

    move-result-object v0

    sput-object v0, Lb/v;->c:Lb/u;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lb/u;->a(Ljava/lang/String;)Lb/u;

    move-result-object v0

    sput-object v0, Lb/v;->d:Lb/u;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lb/u;->a(Ljava/lang/String;)Lb/u;

    move-result-object v0

    sput-object v0, Lb/v;->e:Lb/u;

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lb/v;->f:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lb/v;->g:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lb/v;->h:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lc/f;Lb/u;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/f;",
            "Lb/u;",
            "Ljava/util/List",
            "<",
            "Lb/v$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lb/aa;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lb/v;->m:J

    iput-object p1, p0, Lb/v;->i:Lc/f;

    iput-object p2, p0, Lb/v;->j:Lb/u;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lc/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/u;->a(Ljava/lang/String;)Lb/u;

    move-result-object v0

    iput-object v0, p0, Lb/v;->k:Lb/u;

    invoke-static {p3}, Lb/a/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/v;->l:Ljava/util/List;

    return-void
.end method

.method private a(Lc/d;Z)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    move-object v1, v0

    move-object p1, v0

    :goto_0
    const/4 v0, 0x0

    iget-object v4, p0, Lb/v;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    :goto_1
    if-ge v4, v5, :cond_6

    iget-object v0, p0, Lb/v;->l:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/v$b;

    invoke-static {v0}, Lb/v$b;->a(Lb/v$b;)Lb/r;

    move-result-object v6

    invoke-static {v0}, Lb/v$b;->b(Lb/v$b;)Lb/aa;

    move-result-object v7

    sget-object v0, Lb/v;->h:[B

    invoke-interface {p1, v0}, Lc/d;->c([B)Lc/d;

    iget-object v0, p0, Lb/v;->i:Lc/f;

    invoke-interface {p1, v0}, Lc/d;->b(Lc/f;)Lc/d;

    sget-object v0, Lb/v;->g:[B

    invoke-interface {p1, v0}, Lc/d;->c([B)Lc/d;

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v6}, Lb/r;->a()I

    move-result v8

    :goto_2
    if-ge v0, v8, :cond_0

    invoke-virtual {v6, v0}, Lb/r;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v9

    sget-object v10, Lb/v;->f:[B

    invoke-interface {v9, v10}, Lc/d;->c([B)Lc/d;

    move-result-object v9

    invoke-virtual {v6, v0}, Lb/r;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v9

    sget-object v10, Lb/v;->g:[B

    invoke-interface {v9, v10}, Lc/d;->c([B)Lc/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {v7}, Lb/aa;->b()Lb/u;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v6, "Content-Type: "

    invoke-interface {p1, v6}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v6

    invoke-virtual {v0}, Lb/u;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v0

    sget-object v6, Lb/v;->g:[B

    invoke-interface {v0, v6}, Lc/d;->c([B)Lc/d;

    :cond_1
    invoke-virtual {v7}, Lb/aa;->c()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_3

    const-string v0, "Content-Length: "

    invoke-interface {p1, v0}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v0

    invoke-interface {v0, v8, v9}, Lc/d;->k(J)Lc/d;

    move-result-object v0

    sget-object v6, Lb/v;->g:[B

    invoke-interface {v0, v6}, Lc/d;->c([B)Lc/d;

    :cond_2
    sget-object v0, Lb/v;->g:[B

    invoke-interface {p1, v0}, Lc/d;->c([B)Lc/d;

    if-eqz p2, :cond_5

    add-long/2addr v2, v8

    :goto_3
    sget-object v0, Lb/v;->g:[B

    invoke-interface {p1, v0}, Lc/d;->c([B)Lc/d;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_3
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lc/c;->t()V

    const-wide/16 v2, -0x1

    :cond_4
    :goto_4
    return-wide v2

    :cond_5
    invoke-virtual {v7, p1}, Lb/aa;->a(Lc/d;)V

    goto :goto_3

    :cond_6
    sget-object v0, Lb/v;->h:[B

    invoke-interface {p1, v0}, Lc/d;->c([B)Lc/d;

    iget-object v0, p0, Lb/v;->i:Lc/f;

    invoke-interface {p1, v0}, Lc/d;->b(Lc/f;)Lc/d;

    sget-object v0, Lb/v;->h:[B

    invoke-interface {p1, v0}, Lc/d;->c([B)Lc/d;

    sget-object v0, Lb/v;->g:[B

    invoke-interface {p1, v0}, Lc/d;->c([B)Lc/d;

    if-eqz p2, :cond_4

    invoke-virtual {v1}, Lc/c;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v1}, Lc/c;->t()V

    goto :goto_4

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lc/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/v;->a(Lc/d;Z)J

    return-void
.end method

.method public b()Lb/u;
    .locals 1

    iget-object v0, p0, Lb/v;->k:Lb/u;

    return-object v0
.end method

.method public c()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lb/v;->m:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lb/v;->a(Lc/d;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lb/v;->m:J

    goto :goto_0
.end method
