/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_ptr.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lbrianna <lbrianna@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/01 13:13:43 by lbrianna          #+#    #+#             */
/*   Updated: 2022/05/16 13:35:12 by lbrianna         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_putptr(unsigned long ad)
{
	int	count;

	count = 0;
	ft_putstr("0x");
	count += 2;
	count = ft_low_hexa(ad, count);
	count = count + 2;
	return (count);
}
