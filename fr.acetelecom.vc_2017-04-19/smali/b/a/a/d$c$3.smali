.class Lb/a/a/d$c$3;
.super Lb/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/d$c;->a(Lb/a/a/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/n;

.field final synthetic c:Lb/a/a/d$c;


# direct methods
.method varargs constructor <init>(Lb/a/a/d$c;Ljava/lang/String;[Ljava/lang/Object;Lb/a/a/n;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/d$c$3;->c:Lb/a/a/d$c;

    iput-object p4, p0, Lb/a/a/d$c$3;->a:Lb/a/a/n;

    invoke-direct {p0, p2, p3}, Lb/a/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lb/a/a/d$c$3;->c:Lb/a/a/d$c;

    iget-object v0, v0, Lb/a/a/d$c;->c:Lb/a/a/d;

    iget-object v0, v0, Lb/a/a/d;->i:Lb/a/a/c;

    iget-object v1, p0, Lb/a/a/d$c$3;->a:Lb/a/a/n;

    invoke-interface {v0, v1}, Lb/a/a/c;->a(Lb/a/a/n;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
