.class Lcom/rami_bar/fun_call/activities/ActivityMain$7;
.super Ljava/lang/Object;
.source "ActivityMain.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityMain;->setCountryToCall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$7;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 830
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$7;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$600(Lcom/rami_bar/fun_call/activities/ActivityMain;)Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->getCountryImageResource(I)I

    move-result v0

    .line 831
    .local v0, "img":I
    if-lez v0, :cond_0

    .line 832
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$7;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_prefix:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$700(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$7;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$600(Lcom/rami_bar/fun_call/activities/ActivityMain;)Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->GetCountryCallingCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 833
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$7;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->iv_country:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$800(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 834
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$7;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$500(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v1

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$7;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$600(Lcom/rami_bar/fun_call/activities/ActivityMain;)Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->GetCountryShortCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rami_bar/fun_call/utiles/SharedUser;->setCallingCountry(Ljava/lang/String;)V

    .line 836
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
    .line 840
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
