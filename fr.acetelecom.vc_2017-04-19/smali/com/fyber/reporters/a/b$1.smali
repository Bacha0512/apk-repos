.class final Lcom/fyber/reporters/a/b$1;
.super Lcom/fyber/reporters/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/reporters/a/b;->e()Lcom/fyber/reporters/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/reporters/a/b;


# direct methods
.method constructor <init>(Lcom/fyber/reporters/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/reporters/a/b$1;->a:Lcom/fyber/reporters/a/b;

    invoke-direct {p0}, Lcom/fyber/reporters/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "InstallReporter"

    return-object v0
.end method
