.class Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$2;
.super Ljava/lang/Object;
.source "ActivityChangeNumber.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->setCountryToCall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->access$200(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->getCountryImageResource(I)I

    move-result v0

    .line 231
    .local v0, "img":I
    if-lez v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->iv_country:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->access$300(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    invoke-static {v1}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v1

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->access$200(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->GetCountryShortCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rami_bar/fun_call/utiles/SharedUser;->setCallingCountry(Ljava/lang/String;)V

    .line 235
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
