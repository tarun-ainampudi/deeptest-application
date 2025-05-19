.class Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$1;
.super Ljava/lang/Object;
.source "COUIErrorEditTextHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->init(III[FLcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    .line 141
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$1;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "editable"    # Landroid/text/Editable;

    .line 156
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$1;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$200(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;ZZZ)V

    .line 158
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$1;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$100(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 159
    .local v0, "fullText":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 160
    .local v2, "length":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$1;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$1;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$100(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    invoke-static {v3, v1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$302(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;F)F

    .line 161
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 144
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$1;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$000(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$1;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$1;->this$0:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$100(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->access$002(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;F)F

    .line 147
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 152
    return-void
.end method
