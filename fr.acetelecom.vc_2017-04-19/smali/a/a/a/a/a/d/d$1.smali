.class La/a/a/a/a/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/a/d/d;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "La/a/a/a/a/d/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/a/d/d;


# direct methods
.method constructor <init>(La/a/a/a/a/d/d;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/d/d$1;->a:La/a/a/a/a/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/a/a/a/a/d/d$a;La/a/a/a/a/d/d$a;)I
    .locals 4

    iget-wide v0, p1, La/a/a/a/a/d/d$a;->b:J

    iget-wide v2, p2, La/a/a/a/a/d/d$a;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, La/a/a/a/a/d/d$a;

    check-cast p2, La/a/a/a/a/d/d$a;

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/d/d$1;->a(La/a/a/a/a/d/d$a;La/a/a/a/a/d/d$a;)I

    move-result v0

    return v0
.end method
