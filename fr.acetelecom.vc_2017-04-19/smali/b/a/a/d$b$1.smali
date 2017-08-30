.class final Lb/a/a/d$b$1;
.super Lb/a/a/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/a/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a/a/a;->k:Lb/a/a/a;

    invoke-virtual {p1, v0}, Lb/a/a/e;->a(Lb/a/a/a;)V

    return-void
.end method
