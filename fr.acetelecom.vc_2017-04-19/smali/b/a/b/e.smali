.class public final Lb/a/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/b/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/e$a;
    }
.end annotation


# static fields
.field private static final a:Lc/f;

.field private static final b:Lc/f;

.field private static final c:Lc/f;

.field private static final d:Lc/f;

.field private static final e:Lc/f;

.field private static final f:Lc/f;

.field private static final g:Lc/f;

.field private static final h:Lc/f;

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m:Lb/a/b/r;

.field private final n:Lb/a/a/d;

.field private o:Lb/a/b/g;

.field private p:Lb/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "connection"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/b/e;->a:Lc/f;

    const-string v0, "host"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/b/e;->b:Lc/f;

    const-string v0, "keep-alive"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/b/e;->c:Lc/f;

    const-string v0, "proxy-connection"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/b/e;->d:Lc/f;

    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/b/e;->e:Lc/f;

    const-string v0, "te"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/b/e;->f:Lc/f;

    const-string v0, "encoding"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/b/e;->g:Lc/f;

    const-string v0, "upgrade"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/b/e;->h:Lc/f;

    const/16 v0, 0xb

    new-array v0, v0, [Lc/f;

    sget-object v1, Lb/a/b/e;->a:Lc/f;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/b/e;->b:Lc/f;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/b/e;->c:Lc/f;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/b/e;->d:Lc/f;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/b/e;->e:Lc/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lb/a/a/f;->b:Lc/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/a/a/f;->c:Lc/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lb/a/a/f;->d:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lb/a/a/f;->e:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lb/a/a/f;->f:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lb/a/a/f;->g:Lc/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lb/a/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/a/b/e;->i:Ljava/util/List;

    const/4 v0, 0x5

    new-array v0, v0, [Lc/f;

    sget-object v1, Lb/a/b/e;->a:Lc/f;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/b/e;->b:Lc/f;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/b/e;->c:Lc/f;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/b/e;->d:Lc/f;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/b/e;->e:Lc/f;

    aput-object v1, v0, v7

    invoke-static {v0}, Lb/a/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/a/b/e;->j:Ljava/util/List;

    const/16 v0, 0xe

    new-array v0, v0, [Lc/f;

    sget-object v1, Lb/a/b/e;->a:Lc/f;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/b/e;->b:Lc/f;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/b/e;->c:Lc/f;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/b/e;->d:Lc/f;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/b/e;->f:Lc/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lb/a/b/e;->e:Lc/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/a/b/e;->g:Lc/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lb/a/b/e;->h:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lb/a/a/f;->b:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lb/a/a/f;->c:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lb/a/a/f;->d:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lb/a/a/f;->e:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lb/a/a/f;->f:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lb/a/a/f;->g:Lc/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lb/a/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/a/b/e;->k:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lc/f;

    sget-object v1, Lb/a/b/e;->a:Lc/f;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/b/e;->b:Lc/f;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/b/e;->c:Lc/f;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/b/e;->d:Lc/f;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/b/e;->f:Lc/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lb/a/b/e;->e:Lc/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/a/b/e;->g:Lc/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lb/a/b/e;->h:Lc/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lb/a/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/a/b/e;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lb/a/b/r;Lb/a/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/b/e;->m:Lb/a/b/r;

    iput-object p2, p0, Lb/a/b/e;->n:Lb/a/a/d;

    return-void
.end method

.method static synthetic a(Lb/a/b/e;)Lb/a/b/r;
    .locals 1

    iget-object v0, p0, Lb/a/b/e;->m:Lb/a/b/r;

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lb/ab$a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lb/a/a/f;",
            ">;)",
            "Lb/ab$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, "HTTP/1.1"

    new-instance v6, Lb/r$a;

    invoke-direct {v6}, Lb/r$a;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    move v5, v3

    :goto_0
    if-ge v5, v7, :cond_5

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/f;

    iget-object v8, v0, Lb/a/a/f;->h:Lc/f;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/f;

    iget-object v0, v0, Lb/a/a/f;->i:Lc/f;

    invoke-virtual {v0}, Lc/f;->a()Ljava/lang/String;

    move-result-object v9

    move-object v0, v1

    move v1, v3

    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {v9, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    :cond_0
    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v10, Lb/a/a/f;->a:Lc/f;

    invoke-virtual {v8, v10}, Lc/f;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v11, v2

    move-object v2, v1

    move v1, v11

    goto :goto_1

    :cond_1
    sget-object v10, Lb/a/a/f;->g:Lc/f;

    invoke-virtual {v8, v10}, Lc/f;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_2
    sget-object v10, Lb/a/b/e;->j:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v8}, Lc/f;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v1}, Lb/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/r$a;

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/b/q;->a(Ljava/lang/String;)Lb/a/b/q;

    move-result-object v0

    new-instance v1, Lb/ab$a;

    invoke-direct {v1}, Lb/ab$a;-><init>()V

    sget-object v2, Lb/x;->c:Lb/x;

    invoke-virtual {v1, v2}, Lb/ab$a;->a(Lb/x;)Lb/ab$a;

    move-result-object v1

    iget v2, v0, Lb/a/b/q;->b:I

    invoke-virtual {v1, v2}, Lb/ab$a;->a(I)Lb/ab$a;

    move-result-object v1

    iget-object v0, v0, Lb/a/b/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lb/ab$a;->a(Ljava/lang/String;)Lb/ab$a;

    move-result-object v0

    invoke-virtual {v6}, Lb/r$a;->a()Lb/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/ab$a;->a(Lb/r;)Lb/ab$a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/List;)Lb/ab$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lb/a/a/f;",
            ">;)",
            "Lb/ab$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Lb/r$a;

    invoke-direct {v3}, Lb/r$a;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/f;

    iget-object v5, v0, Lb/a/a/f;->h:Lc/f;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/f;

    iget-object v0, v0, Lb/a/a/f;->i:Lc/f;

    invoke-virtual {v0}, Lc/f;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lb/a/a/f;->a:Lc/f;

    invoke-virtual {v5, v6}, Lc/f;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v6, Lb/a/b/e;->l:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lc/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lb/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/r$a;

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP/1.1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/b/q;->a(Ljava/lang/String;)Lb/a/b/q;

    move-result-object v0

    new-instance v1, Lb/ab$a;

    invoke-direct {v1}, Lb/ab$a;-><init>()V

    sget-object v2, Lb/x;->d:Lb/x;

    invoke-virtual {v1, v2}, Lb/ab$a;->a(Lb/x;)Lb/ab$a;

    move-result-object v1

    iget v2, v0, Lb/a/b/q;->b:I

    invoke-virtual {v1, v2}, Lb/ab$a;->a(I)Lb/ab$a;

    move-result-object v1

    iget-object v0, v0, Lb/a/b/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lb/ab$a;->a(Ljava/lang/String;)Lb/ab$a;

    move-result-object v0

    invoke-virtual {v3}, Lb/r$a;->a()Lb/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/ab$a;->a(Lb/r;)Lb/ab$a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lb/z;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/z;",
            ")",
            "Ljava/util/List",
            "<",
            "Lb/a/a/f;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lb/z;->c()Lb/r;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lb/r;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lb/a/a/f;

    sget-object v1, Lb/a/a/f;->b:Lc/f;

    invoke-virtual {p0}, Lb/z;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lb/a/a/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lb/a/a/f;

    sget-object v1, Lb/a/a/f;->c:Lc/f;

    invoke-virtual {p0}, Lb/z;->a()Lb/s;

    move-result-object v3

    invoke-static {v3}, Lb/a/b/m;->a(Lb/s;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lb/a/a/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lb/a/a/f;

    sget-object v1, Lb/a/a/f;->g:Lc/f;

    const-string v3, "HTTP/1.1"

    invoke-direct {v0, v1, v3}, Lb/a/a/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lb/a/a/f;

    sget-object v1, Lb/a/a/f;->f:Lc/f;

    invoke-virtual {p0}, Lb/z;->a()Lb/s;

    move-result-object v3

    invoke-static {v3, v2}, Lb/a/i;->a(Lb/s;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lb/a/a/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lb/a/a/f;

    sget-object v1, Lb/a/a/f;->d:Lc/f;

    invoke-virtual {p0}, Lb/z;->a()Lb/s;

    move-result-object v3

    invoke-virtual {v3}, Lb/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lb/a/a/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v4}, Lb/r;->a()I

    move-result v7

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_4

    invoke-virtual {v4, v3}, Lb/r;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v8

    sget-object v0, Lb/a/b/e;->i:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v3}, Lb/r;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lb/a/a/f;

    invoke-direct {v0, v8, v9}, Lb/a/a/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/f;

    iget-object v0, v0, Lb/a/a/f;->h:Lc/f;

    invoke-virtual {v0, v8}, Lc/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/f;

    iget-object v0, v0, Lb/a/a/f;->i:Lc/f;

    invoke-virtual {v0}, Lc/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lb/a/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lb/a/a/f;

    invoke-direct {v9, v8, v0}, Lb/a/a/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v5, v1, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    return-object v5
.end method

.method public static c(Lb/z;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/z;",
            ")",
            "Ljava/util/List",
            "<",
            "Lb/a/a/f;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lb/z;->c()Lb/r;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lb/r;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Lb/a/a/f;

    sget-object v4, Lb/a/a/f;->b:Lc/f;

    invoke-virtual {p0}, Lb/z;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lb/a/a/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lb/a/a/f;

    sget-object v4, Lb/a/a/f;->c:Lc/f;

    invoke-virtual {p0}, Lb/z;->a()Lb/s;

    move-result-object v5

    invoke-static {v5}, Lb/a/b/m;->a(Lb/s;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lb/a/a/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lb/a/a/f;

    sget-object v4, Lb/a/a/f;->e:Lc/f;

    invoke-virtual {p0}, Lb/z;->a()Lb/s;

    move-result-object v5

    invoke-static {v5, v0}, Lb/a/i;->a(Lb/s;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lb/a/a/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lb/a/a/f;

    sget-object v4, Lb/a/a/f;->d:Lc/f;

    invoke-virtual {p0}, Lb/z;->a()Lb/s;

    move-result-object v5

    invoke-virtual {v5}, Lb/s;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lb/a/a/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lb/r;->a()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {v1, v0}, Lb/r;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v4

    sget-object v5, Lb/a/b/e;->k:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lb/a/a/f;

    invoke-virtual {v1, v0}, Lb/r;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lb/a/a/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public a(Lb/ab;)Lb/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lb/a/b/e$a;

    iget-object v1, p0, Lb/a/b/e;->p:Lb/a/a/e;

    invoke-virtual {v1}, Lb/a/a/e;->g()Lc/r;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lb/a/b/e$a;-><init>(Lb/a/b/e;Lc/r;)V

    new-instance v1, Lb/a/b/k;

    invoke-virtual {p1}, Lb/ab;->e()Lb/r;

    move-result-object v2

    invoke-static {v0}, Lc/l;->a(Lc/r;)Lc/e;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lb/a/b/k;-><init>(Lb/r;Lc/e;)V

    return-object v1
.end method

.method public a(Lb/z;J)Lc/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/e;->p:Lb/a/a/e;

    invoke-virtual {v0}, Lb/a/a/e;->h()Lc/q;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lb/a/b/e;->p:Lb/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/b/e;->p:Lb/a/a/e;

    sget-object v1, Lb/a/a/a;->l:Lb/a/a/a;

    invoke-virtual {v0, v1}, Lb/a/a/e;->b(Lb/a/a/a;)V

    :cond_0
    return-void
.end method

.method public a(Lb/a/b/g;)V
    .locals 0

    iput-object p1, p0, Lb/a/b/e;->o:Lb/a/b/g;

    return-void
.end method

.method public a(Lb/a/b/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/e;->p:Lb/a/a/e;

    invoke-virtual {v0}, Lb/a/a/e;->h()Lc/q;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/b/n;->a(Lc/q;)V

    return-void
.end method

.method public a(Lb/z;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/e;->p:Lb/a/a/e;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/a/b/e;->o:Lb/a/b/g;

    invoke-virtual {v0}, Lb/a/b/g;->b()V

    iget-object v0, p0, Lb/a/b/e;->o:Lb/a/b/g;

    invoke-virtual {v0, p1}, Lb/a/b/g;->a(Lb/z;)Z

    move-result v1

    iget-object v0, p0, Lb/a/b/e;->n:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->a()Lb/x;

    move-result-object v0

    sget-object v2, Lb/x;->d:Lb/x;

    if-ne v0, v2, :cond_1

    invoke-static {p1}, Lb/a/b/e;->c(Lb/z;)Ljava/util/List;

    move-result-object v0

    :goto_1
    const/4 v2, 0x1

    iget-object v3, p0, Lb/a/b/e;->n:Lb/a/a/d;

    invoke-virtual {v3, v0, v1, v2}, Lb/a/a/d;->a(Ljava/util/List;ZZ)Lb/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lb/a/b/e;->p:Lb/a/a/e;

    iget-object v0, p0, Lb/a/b/e;->p:Lb/a/a/e;

    invoke-virtual {v0}, Lb/a/a/e;->e()Lc/s;

    move-result-object v0

    iget-object v1, p0, Lb/a/b/e;->o:Lb/a/b/g;

    iget-object v1, v1, Lb/a/b/g;->a:Lb/w;

    invoke-virtual {v1}, Lb/w;->b()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lc/s;->a(JLjava/util/concurrent/TimeUnit;)Lc/s;

    iget-object v0, p0, Lb/a/b/e;->p:Lb/a/a/e;

    invoke-virtual {v0}, Lb/a/a/e;->f()Lc/s;

    move-result-object v0

    iget-object v1, p0, Lb/a/b/e;->o:Lb/a/b/g;

    iget-object v1, v1, Lb/a/b/g;->a:Lb/w;

    invoke-virtual {v1}, Lb/w;->c()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lc/s;->a(JLjava/util/concurrent/TimeUnit;)Lc/s;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lb/a/b/e;->b(Lb/z;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public b()Lb/ab$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/e;->n:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->a()Lb/x;

    move-result-object v0

    sget-object v1, Lb/x;->d:Lb/x;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/a/b/e;->p:Lb/a/a/e;

    invoke-virtual {v0}, Lb/a/a/e;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lb/a/b/e;->b(Ljava/util/List;)Lb/ab$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lb/a/b/e;->p:Lb/a/a/e;

    invoke-virtual {v0}, Lb/a/a/e;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lb/a/b/e;->a(Ljava/util/List;)Lb/ab$a;

    move-result-object v0

    goto :goto_0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/e;->p:Lb/a/a/e;

    invoke-virtual {v0}, Lb/a/a/e;->h()Lc/q;

    move-result-object v0

    invoke-interface {v0}, Lc/q;->close()V

    return-void
.end method
