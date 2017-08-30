.class final Lcom/fyber/currency/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/currency/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/currency/a/a;

.field private b:Ljava/util/Calendar;

.field private c:Lcom/fyber/b/l$a;


# direct methods
.method private constructor <init>(Lcom/fyber/currency/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/currency/a/a$a;->a:Lcom/fyber/currency/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fyber/currency/a/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fyber/currency/a/a$a;-><init>(Lcom/fyber/currency/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/fyber/currency/a/a$a;Lcom/fyber/b/l$a;)Lcom/fyber/b/l$a;
    .locals 0

    iput-object p1, p0, Lcom/fyber/currency/a/a$a;->c:Lcom/fyber/b/l$a;

    return-object p1
.end method

.method static synthetic a(Lcom/fyber/currency/a/a$a;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/fyber/currency/a/a$a;->b:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic a(Lcom/fyber/currency/a/a$a;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    iput-object p1, p0, Lcom/fyber/currency/a/a$a;->b:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic b(Lcom/fyber/currency/a/a$a;)Lcom/fyber/b/l$a;
    .locals 1

    iget-object v0, p0, Lcom/fyber/currency/a/a$a;->c:Lcom/fyber/b/l$a;

    return-object v0
.end method
