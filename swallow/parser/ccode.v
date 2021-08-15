module parser
// Original author: Saptak Bhoumik
pub fn ccode(item string,ccode bool)(Body , bool){
	mut code_block:=Body{}
	mut is_ccode:=ccode
	if item!="Ccode" && is_ccode==true{
		code_block=Body{ast_type:"Ccode"
						keyword : item
						length :item.len}
		}
		else if  item=="Ccode" && is_ccode==true{
			is_ccode=false
		}
	return code_block,is_ccode
}