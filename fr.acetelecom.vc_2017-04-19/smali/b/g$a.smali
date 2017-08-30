.class public final Lb/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lb/a/d/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/g$a;->a:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lb/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/g$a;->a:Ljava/util/List;

    iget-object v0, p0, Lb/g$a;->a:Ljava/util/List;

    invoke-static {p1}, Lb/g;->a(Lb/g;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Lb/g;->b(Lb/g;)Lb/a/d/f;

    move-result-object v0

    iput-object v0, p0, Lb/g$a;->b:Lb/a/d/f;

    return-void
.end method

.method static synthetic a(Lb/g$a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lb/g$a;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lb/g$a;)Lb/a/d/f;
    .locals 1

    iget-object v0, p0, Lb/g$a;->b:Lb/a/d/f;

    return-object v0
.end method


# virtual methods
.method public a(Lb/a/d/f;)Lb/g$a;
    .locals 0

    iput-object p1, p0, Lb/g$a;->b:Lb/a/d/f;

    return-object p0
.end method

.method public a()Lb/g;
    .locals 2

    new-instance v0, Lb/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/g;-><init>(Lb/g$a;Lb/g$1;)V

    return-object v0
.end method
