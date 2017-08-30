.class Lb/a/b/e$a;
.super Lc/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lb/a/b/e;


# direct methods
.method public constructor <init>(Lb/a/b/e;Lc/r;)V
    .locals 0

    iput-object p1, p0, Lb/a/b/e$a;->a:Lb/a/b/e;

    invoke-direct {p0, p2}, Lc/h;-><init>(Lc/r;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/e$a;->a:Lb/a/b/e;

    invoke-static {v0}, Lb/a/b/e;->a(Lb/a/b/e;)Lb/a/b/r;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lb/a/b/e$a;->a:Lb/a/b/e;

    invoke-virtual {v0, v1, v2}, Lb/a/b/r;->a(ZLb/a/b/i;)V

    invoke-super {p0}, Lc/h;->close()V

    return-void
.end method
