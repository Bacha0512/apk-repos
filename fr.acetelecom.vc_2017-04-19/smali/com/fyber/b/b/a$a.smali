.class public final Lcom/fyber/b/b/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/interstitials/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/interstitials/b/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/b/b/a$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/fyber/b/b/a;
    .locals 2

    new-instance v0, Lcom/fyber/b/b/a;

    iget-object v1, p0, Lcom/fyber/b/b/a$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/fyber/b/b/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method
