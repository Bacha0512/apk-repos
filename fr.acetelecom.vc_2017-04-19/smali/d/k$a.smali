.class Ld/k$a;
.super Lb/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lb/aa;

.field private final b:Lb/u;


# direct methods
.method constructor <init>(Lb/aa;Lb/u;)V
    .locals 0

    invoke-direct {p0}, Lb/aa;-><init>()V

    iput-object p1, p0, Ld/k$a;->a:Lb/aa;

    iput-object p2, p0, Ld/k$a;->b:Lb/u;

    return-void
.end method


# virtual methods
.method public a(Lc/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ld/k$a;->a:Lb/aa;

    invoke-virtual {v0, p1}, Lb/aa;->a(Lc/d;)V

    return-void
.end method

.method public b()Lb/u;
    .locals 1

    iget-object v0, p0, Ld/k$a;->b:Lb/u;

    return-object v0
.end method

.method public c()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ld/k$a;->a:Lb/aa;

    invoke-virtual {v0}, Lb/aa;->c()J

    move-result-wide v0

    return-wide v0
.end method
