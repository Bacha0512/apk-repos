.class Ld/h$a$1;
.super Lc/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/h$a;->d()Lc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/h$a;


# direct methods
.method constructor <init>(Ld/h$a;Lc/r;)V
    .locals 0

    iput-object p1, p0, Ld/h$a$1;->a:Ld/h$a;

    invoke-direct {p0, p2}, Lc/h;-><init>(Lc/r;)V

    return-void
.end method


# virtual methods
.method public a(Lc/c;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lc/h;->a(Lc/c;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Ld/h$a$1;->a:Ld/h$a;

    iput-object v0, v1, Ld/h$a;->a:Ljava/io/IOException;

    throw v0
.end method
