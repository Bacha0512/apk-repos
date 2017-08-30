.class Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CountriesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field imgViewFlag:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

.field txtViewCountryCode:Landroid/widget/TextView;

.field txtViewCountryName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;->this$0:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;
    .param p2, "x1"    # Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$1;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;-><init>(Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;)V

    return-void
.end method
