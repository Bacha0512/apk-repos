.class final Lc/s$1;
.super Lc/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lc/s;
    .locals 0

    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lc/s;
    .locals 0

    return-object p0
.end method

.method public g()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
