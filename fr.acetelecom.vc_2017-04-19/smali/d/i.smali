.class abstract Ld/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/i$a;,
        Ld/i$f;,
        Ld/i$j;,
        Ld/i$e;,
        Ld/i$c;,
        Ld/i$b;,
        Ld/i$i;,
        Ld/i$h;,
        Ld/i$g;,
        Ld/i$d;,
        Ld/i$k;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ld/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/i",
            "<",
            "Ljava/lang/Iterable",
            "<TT;>;>;"
        }
    .end annotation

    new-instance v0, Ld/i$1;

    invoke-direct {v0, p0}, Ld/i$1;-><init>(Ld/i;)V

    return-object v0
.end method

.method abstract a(Ld/k;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/k;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final b()Ld/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/i",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ld/i$2;

    invoke-direct {v0, p0}, Ld/i$2;-><init>(Ld/i;)V

    return-object v0
.end method
